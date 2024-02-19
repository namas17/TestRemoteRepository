#!/bin/bash

set -e

# install exporter utilities
../utilities/exporter/install.sh

echo ">> Configuring export settings"
# configure projects to exporter
twx call Things/Vilia.Utils.Exporter_TG/Configure -pconfiguration="{\"projects\": [\"IKEA.CVM\"]}"
