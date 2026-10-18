from fastapi.testclient import TestClient
from main import app

client = TestClient(app)


def test_root_endpoint():
    response = client.get("/")
    assert response.status_code == 200

    data = response.json()
    assert data["service"] == "AWS NGINX Platform"
    assert data["status"] == "running"


def test_health_endpoint():
    response = client.get("/health")
    assert response.status_code == 200

    data = response.json()
    assert data["status"] == "healthy"
    assert "timestamp" in data


def test_api_info_endpoint():
    response = client.get("/api/info")
    assert response.status_code == 200

    data = response.json()
    assert data["application"] == "claims-service"
    assert data["environment"] == "development"
    assert data["proxy"] == "nginx"