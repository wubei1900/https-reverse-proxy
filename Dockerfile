FROM haproxy

ADD ./haproxy.cfg /etc/haproxy/haproxy.cfg
ADD ./ssl /ssl

EXPOSE 80
EXPOSE 443
EXPOSE 1936

CMD ["haproxy", "-f", "/etc/haproxy/haproxy.cfg"]
