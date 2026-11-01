FROM fedora:latest
RUN dnf -y upgrade

# Install deps
RUN dnf -y install tuxpaint vim httpd

# Configuration
EXPOSE 80/tcp
CMD ["httpd", "-D", "FOREGROUND"]
COPY myinfo.html /var/www/html/myinfo.html

