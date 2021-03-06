#! /bin/bash

#GCP
./1-fly-install-opsman.sh -t s1p -p dev -n install-opsman -o ops-files/resource-gcs.yml
./2-fly-upgrade-opsman.sh -t s1p -p dev -n upgrade-opsman -o ops-files/upgrade-resource-gcs.yml
./3-fly-install-upgrade-products.sh -t s1p -p dev -n install-upgrade-products -o ops-files/resource-gcs.yml
./3-fly-install-upgrade-products.sh -t s1p -p dev -n install-upgrade-products -o ops-files/resource-gcs.yml ops-files/task-apply-changes.yml
./4-fly-patch-products.sh -t s1p -p dev -n patch-products -o ops-files/resource-gcs.yml
