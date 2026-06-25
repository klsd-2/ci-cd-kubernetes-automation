# CI/CD & Kubernetes Automation

Production-style DevOps portfolio project demonstrating CI/CD automation, container orchestration, Infrastructure as Code, and Kubernetes deployments on AWS.

---

## Architecture

```text
Developer
    ↓
GitHub
    ↓
GitHub Actions
    ↓
Jenkins Pipeline
    ↓
Docker Build
    ↓
AWS ECR
    ↓
Helm Deployment
    ↓
AWS EKS
    ↓
Kubernetes HPA
```

---

## Technologies Used

### CI/CD
- Jenkins
- GitHub Actions

### Containerization
- Docker

### Container Orchestration
- Kubernetes
- Helm

### Cloud Platform
- AWS EKS
- AWS ECR

### Infrastructure as Code
- Terraform

### Programming Language
- Python (Flask)

---

## Features

- Automated CI/CD pipelines using Jenkins and GitHub Actions
- Docker image build and container deployment workflow
- Kubernetes deployment using Helm charts
- Rolling deployment strategy
- Helm rollback support
- Horizontal Pod Autoscaler (HPA)
- Infrastructure provisioning using Terraform
- Modular and reusable project structure

---

## Project Structure

```text
ci-cd-kubernetes-automation/
│
├── application/
│   ├── app.py
│   ├── requirements.txt
│   └── Dockerfile
│
├── .github/
│   └── workflows/
│       └── build.yml
│
├── Jenkinsfile
│
├── kubernetes/
│   ├── namespace.yaml
│   ├── configmap.yaml
│   ├── deployment.yaml
│   ├── service.yaml
│   └── hpa.yaml
│
├── helm/
│   └── flask-app/
│       ├── Chart.yaml
│       ├── values.yaml
│       └── templates/
│
├── terraform/
│   ├── provider.tf
│   ├── variables.tf
│   ├── vpc.tf
│   ├── eks.tf
│   ├── ecr.tf
│   └── outputs.tf
│
└── README.md
```

---

## Build Docker Image

```bash
docker build -t flask-app ./application
```

---

## Run Container

```bash
docker run -p 5000:5000 flask-app
```

---

## Deploy Kubernetes Resources

```bash
kubectl apply -f kubernetes/
```

---

## Install Helm Chart

```bash
helm install flask-app ./helm/flask-app
```

---

## Upgrade Release

```bash
helm upgrade flask-app ./helm/flask-app
```

---

## Rollback Release

```bash
helm rollback flask-app 1
```

---

## Terraform Commands

Initialize:

```bash
terraform init
```

Plan:

```bash
terraform plan
```

Apply:

```bash
terraform apply
```

Destroy:

```bash
terraform destroy
```

---

## Future Enhancements

- ArgoCD GitOps deployment
- Prometheus monitoring
- Grafana dashboards
- Blue-Green deployment automation
- AWS Load Balancer Controller
- AlertManager integration

---

DevOps Engineer

AWS | Terraform | Kubernetes | Jenkins | Docker | GitHub Actions
