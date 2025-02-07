FROM registry:2

COPY config.yml /etc/docker/registry/config.yml

ENTRYPOINT ["/run.sh"]

CMD ["/etc/docker/registry/config.yml"]