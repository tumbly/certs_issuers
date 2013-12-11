#! /bin/sh

# Show certificates issuers and subjects

for file in /etc/ssl/certs/*; do
    echo -n "$file: "
    openssl x509 -noout -in "$file" -issuer -subject
done