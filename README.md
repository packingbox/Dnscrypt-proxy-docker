# Dnscrypt-proxy-docker

dnscrypt server list:
https://www.evilvibes.com/dnscrypt

Online DNS Stamp calculator.
https://dnscrypt.info/stamps

# Start docker

docker build -t dnscrypt-proxy .

docker run -d -p 53:53/udp dnscrypt-proxy
