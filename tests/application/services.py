from tests.domain.entities import ENTITIES
from tests.infrastructure.http_client import ApiClient


def _find_entity(name):
    for e in ENTITIES:
        if e.name == name:
            return e
    return None


def _pk_path(pk_field, pk_val):
    if isinstance(pk_field, list):
        return "/".join(str(pk_val[f]) for f in pk_field)
    return str(pk_val)


def _pk_in_list(pk_field, pk_val, items):
    if isinstance(pk_field, list):
        return any(all(item.get(f) == pk_val[f] for f in pk_field) for item in items)
    return any(item.get(pk_field) == pk_val for item in items)


def _set_pk(entity, data, pk_val):
    if isinstance(entity.pk_field, list):
        for f in entity.pk_field:
            data[f] = pk_val[f]
    else:
        data[entity.pk_field] = pk_val


class TestResult:
    def __init__(self):
        self.passed = 0
        self.failed = 0
        self.errors = []

    def ok(self, msg):
        self.passed += 1
        print(f"  [OK] {msg}")

    def fail(self, msg, detail=""):
        self.failed += 1
        self.errors.append(f"{msg}: {detail}")
        print(f"  [FAIL] {msg}")
        if detail:
            print(f"         {detail}")

    def summary(self):
        print(f"\n  {'-'*30}")
        print(f"  Total: {self.passed + self.failed}  |  Passed: {self.passed}  |  Failed: {self.failed}")
        return self.failed == 0


class TestService:
    def __init__(self, client=None):
        self.client = client or ApiClient()

    def build_context(self, entity, context=None):
        ctx = context or {}
        for dep_name in entity.dependent_fks:
            dep = _find_entity(dep_name)
            if dep:
                ctx = self.build_context(dep, ctx)
                sample = dep.sample_fn(ctx)
                _, _, resp = self.client.create(dep.endpoint, sample)
                if resp.status_code == 201:
                    data = resp.json()
                    if isinstance(dep.pk_field, list):
                        for f in dep.pk_field:
                            ctx[f] = data.get(f)
                    else:
                        ctx[dep.pk_field] = data.get(dep.pk_field)
                else:
                    print(f"  [!] Failed to create dependency {dep.name}: {resp.status_code}")
        return ctx

    def run_test(self, entity_name):
        entity = _find_entity(entity_name)
        if not entity:
            print(f"  [FAIL] Unknown entity: {entity_name}")
            return TestResult()

        result = TestResult()
        ctx = self.build_context(entity)

        print(f"\n  -- Testing: {entity.name} --\n")

        sample = entity.sample_fn(ctx)
        status, elapsed, resp = self.client.create(entity.endpoint, sample)
        if status in (200, 201):
            result.ok(f"POST {entity.endpoint} -> {status} ({elapsed:.3f}s)")
            created = resp.json()
            if isinstance(entity.pk_field, list):
                pk_val = {f: created.get(f) for f in entity.pk_field}
            else:
                pk_val = created.get(entity.pk_field)
        else:
            result.fail(f"POST {entity.endpoint}", f"{status}: {resp.text[:200]}")
            return result

        path = _pk_path(entity.pk_field, pk_val)

        status, elapsed, resp = self.client.get_all(entity.endpoint)
        if status == 200:
            result.ok(f"GET {entity.endpoint} -> 200 ({elapsed:.3f}s)")
            items = resp.json()
            if _pk_in_list(entity.pk_field, pk_val, items):
                result.ok(f"  Created {entity.name} #{path} appears in list")
            else:
                result.fail(f"  Created {entity.name} #{path} NOT in list")
        else:
            result.fail(f"GET {entity.endpoint}", f"{status}: {resp.text[:200]}")

        status, elapsed, resp = self.client.get_by_id(entity.endpoint, path)
        if status == 200:
            result.ok(f"GET {entity.endpoint}/{path} -> 200 ({elapsed:.3f}s)")
        else:
            result.fail(f"GET {entity.endpoint}/{path}", f"{status}: {resp.text[:200]}")

        updated = entity.sample_fn(ctx)
        _set_pk(entity, updated, pk_val)
        for field in ["nombreProvincia","nombreEstado","nombreRol","nombreCanton","nombreDistrito",
                       "nacionalidad","nombrePropiedad","nombrePromo","nombrePolitica",
                       "nombreRegla","nombreZona","nombreComercio","nombreEquipamiento",
                       "nombreCategoria","nombreLista"]:
            if field in updated:
                updated[field] = f"{updated[field]}_upd"

        if entity.no_put:
            result.ok(f"PUT {entity.endpoint} (no endpoint, skipped)")
        elif entity.composite:
            status, elapsed, resp = self.client.update(entity.endpoint, None, updated)
            if status == 204:
                result.ok(f"PUT {entity.endpoint} -> 204 ({elapsed:.3f}s)")
            else:
                result.fail(f"PUT {entity.endpoint}", f"{status}: {resp.text[:200]}")
        else:
            status, elapsed, resp = self.client.update(entity.endpoint, pk_val, updated)
            if status == 204:
                result.ok(f"PUT {entity.endpoint}/{path} -> 204 ({elapsed:.3f}s)")
            else:
                result.fail(f"PUT {entity.endpoint}/{path}", f"{status}: {resp.text[:200]}")

        status, elapsed, resp = self.client.delete(entity.endpoint, path)
        if status == 204:
            result.ok(f"DELETE {entity.endpoint}/{path} -> 204 ({elapsed:.3f}s)")
        else:
            result.fail(f"DELETE {entity.endpoint}/{path}", f"{status}: {resp.text[:200]}")

        status, elapsed, resp = self.client.get_by_id(entity.endpoint, path)
        if status == 404:
            result.ok(f"  Deleted {entity.name} #{path} returns 404")
        else:
            result.fail(f"  Deleted {entity.name} #{path}", f"Expected 404, got {status}")

        return result

    def run_all(self):
        print("\n" + "=" * 60)
        print("  Tiquicia Lodge - Test Suite")
        print("=" * 60)
        total_passed = 0
        total_failed = 0
        for entity in ENTITIES:
            result = self.run_test(entity.name)
            total_passed += result.passed
            total_failed += result.failed
            print()
        print("=" * 60)
        print(f"  GRAND TOTAL: Passed: {total_passed}  |  Failed: {total_failed}")
        print("=" * 60)
        return total_failed == 0

    def run_error_tests(self):
        result = TestResult()
        print(f"\n  -- Error Handling Tests --\n")

        status, _, resp = self.client.get_all("NoExiste")
        if status == 404:
            result.ok("GET /api/NoExiste -> 404")
        else:
            result.fail("GET /api/NoExiste", f"Expected 404, got {status}")

        status, _, resp = self.client.create("Provincias", {})
        if status == 400:
            result.ok("POST Provincias with empty body -> 400")
        else:
            result.fail("POST Provincias empty body", f"Expected 400, got {status}")

        status, _, resp = self.client.create("Provincias", {"idProvincia": 0})
        if status == 400:
            result.ok("POST Provincias missing required -> 400")
        else:
            result.fail("POST Provincias missing required", f"Expected 400, got {status}")

        status, _, resp = self.client.update("Usuarios", 1, {
            "idUsuario": 999, "nombre": "x", "primerApellido": "x",
            "correo": "x@x.com", "contrasena": "x",
            "idNacionalidad": 1, "direccion": "x", "idRol": 1, "idEstado": 1
        })
        if status == 400:
            result.ok("PUT Usuarios with ID mismatch -> 400")
        else:
            result.fail("PUT Usuarios ID mismatch", f"Expected 400, got {status}")

        status, _, resp = self.client.delete("Provincias", 999999)
        if status == 204:
            result.ok("DELETE nonexistent -> 204")
        else:
            result.fail("DELETE nonexistent", f"Expected 204, got {status}")

        result.summary()
        return result.failed == 0
