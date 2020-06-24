FROM registry.fedoraproject.org/fedora:31

RUN : \
 && dnf -y --refresh update \
 && dnf -y install \
      graphviz \
      podman \
      python3-jinja2 \
      python3-yaml \
 && dnf -y clean all \
 && :

COPY ./ /opt/content-resolver/
