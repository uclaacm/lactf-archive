FROM python:3.14-slim-bookworm

RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd && chmod 755 /var/run/sshd

COPY sshd_config /etc/ssh/sshd_config

# password is ttyspin
RUN useradd -m ttyspin -p '$6$Riixhg4SNFTQAvGS$3iNZN7RGqehWucUYHJHUNnuLSCTjLSjc3NIPkWMrOMlSTp.BOxPJyqbVaDT.AxvRZS7dlQn4R3fK1nTN2V1Au1'

COPY app /app

CMD ["/usr/sbin/sshd", "-D"]
