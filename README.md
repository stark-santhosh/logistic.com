```mermaid
flowchart LR
    subgraph SC [Source Control]
        A[Developer Commit] --> B[GitHub Repository]
    end

    subgraph CI [Continuous Integration]
        B --> C[Jenkins CI]
        C --> D[Build Docker Image]
    end

    subgraph CR [Container Registry]
        D --> E[Push to Docker Hub]
    end

    subgraph CD [Continuous Deployment]
        E --> F[Argo CD Pull Image]
        F --> G[Deploy to Kubernetes]
    end

    subgraph MON [Monitoring and Observability]
        G --> H[Prometheus]
        G --> I[Grafana]
        H --> J[Alerting and Metrics]
        I --> K[Dashboards and Visualization]
    end
