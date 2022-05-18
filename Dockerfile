FROM ubuntu/squid

COPY script.pl /usr/local/bin/squid_upside_down.pl
RUN echo 'url_rewrite_program /usr/bin/perl /usr/local/bin/squid_upside_down.pl' >> /etc/squid/squid.conf
RUN apt-get update && apt-get install -y wget imagemagick

EXPOSE 3128
