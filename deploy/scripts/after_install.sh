#!/bin/bash

echo "Setting ownership and permissions..."

chown root:petclinic /opt/app/application/petclinic.jar
chmod 640 /opt/app/application/petclinic.jar

echo "Permissions configured."

