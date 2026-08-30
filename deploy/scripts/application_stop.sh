#!/bin/bash

echo "Stopping PetClinic application..."

systemctl stop petclinic || true

echo "PetClinic application stopped."
