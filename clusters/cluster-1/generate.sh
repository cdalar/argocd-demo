#!/bin/bash

helm template -n longhorn-system longhorn longhorn/longhorn -f longhorn/values-custom.yaml > apps/longhorn/gen.yaml
helm template -n apps mariadb mariadb/mariadb  > apps/mariadb/gen.yaml