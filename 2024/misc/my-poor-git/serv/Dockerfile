FROM cirocosta/gitserver-http
RUN apk update
RUN apk add zip

# Stop the git server from complaining about being unable to read this file
RUN mkdir -p /root/.config/git/
RUN touch /root/.config/git/attributes
RUN chmod 744 /root/.config/git/attributes
RUN find /root -type d -exec chmod 755 {} +

COPY repo.zip /var/lib/git/repo.zip
RUN unzip /var/lib/git/repo.zip -d /var/lib/git/
RUN mv /var/lib/git/repo/.git /var/lib/git/flag.git
RUN rm -rf /var/lib/git/repo.zip /var/lib/git/repo/

COPY gitconfig /etc/gitconfig
EXPOSE 80