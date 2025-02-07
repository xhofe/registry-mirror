FROM registry:2

COPY config.yml /etc/docker/registry/config.yml
COPY run.sh /run.sh

ENTRYPOINT ["/run.sh"]

CMD ["/etc/docker/registry/config.yml"]