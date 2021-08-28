from fastapi.testclient import TestClient

from .api import app

client = TestClient(app)


def test_read_main():
    """
    Validate that the application is running and
    processing requests
    """
    response = client.get("/")
    assert response.status_code == 200
