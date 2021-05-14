openssl req -x509 -days 1024 -newkey rsa:4096 \
	-extensions v3_ca \
	-config ca-self-signed.cnf \
	-keyout our-ca.key \
	-out our-ca.crt
