#!/bin/bash

echo "Validating PetClinic application..."

if systemctl is-active --quiet petclinic; then
    echo "PetClinic systemd service is active."
else
    echo "PetClinic systemd service is not active."
    exit 1
fi

if curl -fsS http://127.0.0.1:8080 > /dev/null; then
    echo "PetClinic HTTP health check successful."
else
    echo "PetClinic HTTP health check failed."
    exit 1
fi

echo "Deployment validation successful."
