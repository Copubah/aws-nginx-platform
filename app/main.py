from datetime import datetime, timezone
from fastapi import FastAPI
app = FastAPI(
    title="AWS NGINX Platform",
    description="A cloud-hosted application behind an NGINX reverse proxy.",
    version="1.0.0",
)


@app.get("/")
def root():
    return {
        "service": "AWS NGINX Platform",
        "status": "running",
        "message": "Request successfully reached the backend.",
    }


@app.get("/health")
def health():
    return {
        "status": "healthy",
        "timestamp": datetime.now(timezone.utc).isoformat(),
    }


@app.get("/api/info")
def info():
    return {
        "application": "claims-service",
        "environment": "development",
        "proxy": "nginx",
    }
