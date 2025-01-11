graph LR
    subgraph Source Control
        A[Developer Commit] --> B[GitHub]
    end

    subgraph Continuous Integration
        B --> C[Jenkins (CI)]
        C --> D[Build Docker Image]
    end

    subgraph Container Registry
        D --> E[Push to Docker Hub]
    end

    subgraph Continuous Deployment
        E --> F[Argo CD Pull Image]
        F --> G[Deploy in Kubernetes]
    end

    subgraph Monitoring
        G --> H[Prometheus]
        G --> I[Grafana]
    end

    subgraph Observability
        H --> J[Alerting & Metrics]
        I --> K[Dashboards & Visualizations]
    end
