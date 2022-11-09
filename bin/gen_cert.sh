#!/bin/sh

CERT_NAME="$1"

if [ "$#" -ne 1 ]; then
    echo "USAGE: gen_cert.sh CERT_NAME"
    exit 1
fi

openssl req -x509 -newkey rsa:4096 -keyout ${CERT_NAME}.key -out ${CERT_NAME}.crt -sha512 -days 3650