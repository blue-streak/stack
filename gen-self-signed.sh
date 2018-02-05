openssl req -x509 -newkey rsa:2048 -keyout key.pem -out ca.pem -days 1080 -nodes -subj '/CN=*/O=My Company Name LTD./C=US'
cp key.pem cert.pem
cat ca.pem >> cert.pem
awk 1 ORS='\\n' cert.pem