FROM ubuntu/squid

COPY script.pl /usr/local/bin/squid_upside_down.pl
RUN echo '[[!]format ini """ url_rewrite_program /usr/local/bin/squid.rewriter.pl """]' >> /etc/squid/squid.conf

EXPOSE 3128
