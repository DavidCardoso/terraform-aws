#!/bin/bash
timestamp=$(date|base64)
terraform init
terraform get
terraform plan --out="./.terraform/$timestamp"
terraform apply "./.terraform/$timestamp"