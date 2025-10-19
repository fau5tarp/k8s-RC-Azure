# Kubernetes Resume Challenge – Azure Edition 🌩️

This project implements the [Kubernetes Resume Challenge](https://cloudresumechallenge.dev/docs/extensions/kubernetes-challenge/)
using **Azure Kubernetes Service (AKS)** and **Azure Container Registry (ACR)**.

## 🏗️ Architecture
- Frontend: PHP + Apache (Dockerized)
- Backend: MariaDB (official image)
- Registry: Azure Container Registry (ACR)
- Cluster: Azure Kubernetes Service (AKS)
- Load Balancer: Azure-managed
- Scaling: Horizontal Pod Autoscaler (HPA)

