#!/usr/bin/env bash
set -euo pipefail

PROJECT_ID="${1:-cloudsec-lab}"
gcloud config set project "$PROJECT_ID"

# Enable core services (free)
gcloud services enable logging.googleapis.com monitoring.googleapis.com iam.googleapis.com securitycenter.googleapis.com

# List enabled services to a file for evidence
mkdir -p scripts
gcloud services list --enabled > scripts/enabled_services.txt

echo "Project $PROJECT_ID initialized. Budget/alerts must be configured in Console (free)."
