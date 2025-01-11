```mermaid
flowchart LR;
    A[**Developer Commit**] --> B[**GitHub**];
    B --> C[**Jenkins CI Job**];
    C --> D[**Build Docker Image**];
    D --> E[**Push to Docker Hub**];
    E --> F[**Argo CD Pull Image**];
    F --> G[**Deploy to Kubernetes**];
    G --> H[**Monitoring with Prometheus**];
    G --> I[**Visualization with Grafana**];

    classDef commitStyle stroke:#ffcc00,stroke-width:2px,fill:none;
    classDef githubStyle stroke:#181717,stroke:#fff,color:#fff,stroke-width:2px,fill:none;
    classDef jenkinsStyle stroke:#f7df1e,stroke-width:2px,fill:none;
    classDef buildStyle stroke:#99cc66,stroke-width:2px,fill:none;
    classDef pushStyle stroke:#cc99ff,stroke-width:2px,fill:none;
    classDef argoStyle stroke:#a2d5f2,stroke-width:2px,fill:none;
    classDef deployStyle stroke:#66ffcc,stroke-width:2px,fill:none;
    classDef monitoringStyle stroke:#ff9966,stroke-width:2px,fill:none;
    classDef grafanaStyle stroke:#ffcc00,stroke-width:2px,fill:none;

    class A commitStyle;
    class B githubStyle;
    class C jenkinsStyle;
    class D buildStyle; 
    class E pushStyle;
    class F argoStyle;
    class G deployStyle;
    class H monitoringStyle;
    class I grafanaStyle;
