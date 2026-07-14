import requests


class ApiClient:
    def __init__(self, base_url="http://localhost:61787/api"):
        self.base_url = base_url.rstrip("/")

    def url(self, endpoint, pk=None):
        base = f"{self.base_url}/{endpoint}"
        if pk is not None and pk != "":
            return f"{base}/{pk}"
        return base

    def get_all(self, endpoint):
        r = requests.get(self.url(endpoint))
        return r.status_code, r.elapsed.total_seconds(), r

    def get_by_id(self, endpoint, pk):
        r = requests.get(self.url(endpoint, pk))
        return r.status_code, r.elapsed.total_seconds(), r

    def create(self, endpoint, data):
        r = requests.post(self.url(endpoint), json=data)
        return r.status_code, r.elapsed.total_seconds(), r

    def update(self, endpoint, pk, data):
        r = requests.put(self.url(endpoint, pk), json=data)
        return r.status_code, r.elapsed.total_seconds(), r

    def delete(self, endpoint, pk):
        r = requests.delete(self.url(endpoint, pk))
        return r.status_code, r.elapsed.total_seconds(), r
