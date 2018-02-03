FROM httpd:2.4

MAINTAINER Ryu Sato <ryu@weseek.co.jp>

# Const environment
ARG HTTPD_CONF_PATH="/usr/local/apache2/conf/httpd.conf"
ARG HTTPD_EXTRA_CONF_DIR="/usr/local/apache2/conf/extra"

# Add extra config 
ARG CONF_PROXY="extra/proxy.conf"
COPY $CONF_PROXY $HTTPD_EXTRA_CONF_DIR/

RUN echo "Include conf/$CONF_PROXY" >> $HTTPD_CONF_PATH