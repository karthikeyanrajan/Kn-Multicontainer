#!/bin/bash

# Function to deploy a Kubernetes resource
Kn-files() {
    kubectl apply -f "$1"
    if [ $? -ne 0 ]; then
        echo "Error deploying $1"
    else
        echo "$1 deployed successfully"
    fi
}

# Deploy each Kubernetes resource
Kn-files "backend-kn-server-cluster-ip-service.yml"
Kn-files "database-persistent-volume-claim.yml"
Kn-files "frontend-kn-client-cluster-ip-service.yml"
Kn-files "ingress-service.yml"
Kn-files "kn-client-deployment.yml"
Kn-files "kn-server-deployment.yml"
Kn-files "postgres-cluster-ip-service.yml"
Kn-files "postgres-deployment.yml"

echo "Kn-files Deployment process completed"

