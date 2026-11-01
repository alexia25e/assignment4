FROM fedora:latest
RUN dnf -y upgrade

# Install deps
RUN dnf -y install tuxpaint vim httpd

# Configuration
COPY myinfo.html /var/www/html/myinfo.html

# Runtime stuff
EXPOSE 80/tcp
CMD ["httpd", "-D", "FOREGROUND"]

