FROM fedora:38

RUN dnf install -y elfutils-debuginfod \
    && dnf clean all \
    && rm -rf /var/cache/yum

ENTRYPOINT debuginfod
