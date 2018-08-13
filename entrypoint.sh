#!/bin/sh

set -e

echo ${GOOGLE_APPLICATION_CREDENTIALS} | base64  -d > /credentials.json
/cloud_sql_proxy -instances=${CONNECTION_NAME}=tcp:0.0.0.0:3306 -credential_file=/credentials.json
