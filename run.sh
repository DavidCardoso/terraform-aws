#!/bin/bash
timestamp=$(date|base64)
terraform get
terraform init
terraform plan --out="./.terraform/$timestamp"
terraform apply "./.terraform/$timestamp"