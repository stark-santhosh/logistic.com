```mermaid
flowchart LR
    %% Define styles for better visuals
    style A fill:#f4f4f4,stroke:#000,stroke-width:2
    style B fill:#181717,stroke:#fff,color:#fff,stroke-width:2
    style C fill:#f7df1e,stroke:#000,stroke-width:2
    style D fill:#0db7ed,stroke:#000,stroke-width:2
    style E fill:#2c3e50,stroke:#ecf0f1,stroke-width:2
    style F fill:#4caf50,stroke:#000,stroke-width:2
    style G fill:#f4f4f4,stroke:#000,stroke-width:2
    style H fill:#e44d26,stroke:#fff,stroke-width:2
    style I fill:#1d72b8,stroke:#fff,stroke-width:2

    %% Workflow (Horizontal Layout)
    A[Developer Commit] -->|Push Code| B([GitHub])
    B -->|Trigger Build| C([Jenkins CI])
    C -->|Builds Image| D([Docker Image])
    D -->|Push Image| E([Docker Hub])
    E -->|Argo CD Pulls Image| F([Deploy to Kubernetes])
    F -->|Runs Application| G([Application Running])
    G -->|Monitor Metrics| H([Prometheus])
    G -->|Visualize Dashboards| I([Grafana])

    %% Label logos for clarity
    B:::github
    C:::jenkins
    E:::dockerhub

    %% Define specific styles for key nodes
    classDef github fill:#181717,stroke:#fff,color:#fff,stroke-width:2
    classDef jenkins fill:#f7df1e,stroke:#000,stroke-width:2
    classDef dockerhub fill:#0db7ed,stroke:#000,stroke-width:2
