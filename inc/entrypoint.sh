#!/bin/sh
set -e
set -o pipefail

packer build -machine-readable packer.json | tee outpacker.log

if [ ! -z "${PLUGIN_FILENAME}" ]; then
  IMAGE_ID=`egrep -oe '.{8}-.{4}-.{4}-.{4}-.{12}' outpacker.log | tail -n1`
  echo ''"$PLUGIN_KEY"' = "'"$IMAGE_ID"'"' >> ${PLUGIN_FILENAME}
fi
