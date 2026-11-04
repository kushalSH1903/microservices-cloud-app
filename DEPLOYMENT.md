# Deployment Components

| Component       | Path             | Tech           | Port | Endpoints              |
|-----------------|------------------|----------------|------|------------------------|
| User Service    | user-service/    | Python / Flask | 5001 | / (status), /users     |
| Product Service | product-service/ | Python / Flask | 5002 | /products              |
| Order Service   | order-service/   | Python / Flask | 5003 | /orders                |
| Nginx           | nginx/           | nginx:alpine   | 80   | reverse proxy          |

All services are stateless (hardcoded JSON data, no database), so no persistent volumes are needed.

## Routing (Nginx, port 80)
- /users -> user-service:5001
- /products -> product-service:5002
- /orders -> order-service:5003
- /health -> Nginx health check

## Run locally
    docker compose up -d --build
    docker compose ps

## Image tagging
Images use the IMAGE_TAG variable (default latest), e.g. IMAGE_TAG=v1.0.0.

## Notes
- The original .github/workflows folder came with the forked repo. CI/CD is handled by Jenkins.
- No secrets are stored in this repository.
