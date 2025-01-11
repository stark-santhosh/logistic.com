# CI/CD Workflow with Monitoring

This document illustrates the CI/CD pipeline and monitoring setup.

```mermaid
graph TD
    A[Developer Commit] --> B[GitHub]
    B --> C[Jenkins (CI)]
    C --> D[Build Docker Image]
    D --> E[Push to Docker Hub]
    E --> F[Argo CD Pull Image]
    F --> G[Deploy in Kubernetes]
    G --> H[Monitoring with Prometheus & Grafana]
