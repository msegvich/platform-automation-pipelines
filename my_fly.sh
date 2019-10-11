#! /bin/bash

#GCP
./1-fly-install-opsman.sh -t s1p -p dev -n install-opsman -o ops-files/resource-gcs.yml
./3-fly-install-upgrade-products.sh -t dev -p dev -n install-upgrade-products
