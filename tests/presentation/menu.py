from tests.domain.entities import ENTITIES


def clear():
    import os
    os.system("cls" if os.name == "nt" else "clear")


def show_header():
    print("=" * 56)
    print("  Tiquicia Lodge - Test Runner")
    print("  Clean Architecture Testing Suite")
    print("=" * 56)


def show_menu():
    print("\n  ENTIDADES DISPONIBLES:\n")
    for i, e in enumerate(ENTITIES, 1):
        deps = f"  (deps: {', '.join(e.dependent_fks)})" if e.dependent_fks else ""
        print(f"  [{i:02d}] {e.name:25s}{deps}")

    print(f"\n  [{len(ENTITIES) + 1:02d}] TODAS LAS ENTIDADES")
    print(f"  [{len(ENTITIES) + 2:02d}] Pruebas de errores")
    print(f"  [{len(ENTITIES) + 3:02d}] Salir")
    print()


def get_choice():
    try:
        return int(input("  Seleccione una opción: ").strip())
    except (ValueError, EOFError):
        return 0


def run():
    from tests.application.services import TestService
    from tests.infrastructure.http_client import ApiClient

    client = ApiClient()
    service = TestService(client)

    while True:
        clear()
        show_header()
        show_menu()

        choice = get_choice()

        if choice == len(ENTITIES) + 3:
            print("\n  ¡Hasta luego!")
            break

        elif choice == len(ENTITIES) + 2:
            clear()
            show_header()
            service.run_error_tests()
            input("\n  Presione Enter para volver al menú...")

        elif choice == len(ENTITIES) + 1:
            clear()
            show_header()
            service.run_all()
            input("\n  Presione Enter para volver al menú...")

        elif 1 <= choice <= len(ENTITIES):
            entity = ENTITIES[choice - 1]
            clear()
            show_header()
            print(f"\n  Probando: {entity.name}")
            result = service.run_test(entity.name)
            result.summary()
            input("\n  Presione Enter para volver al menú...")
