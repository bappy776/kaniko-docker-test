FROM registry.access.redhat.com/ubi8-minimal:8.5-240

# Number of seconds to run the fake migrate process
ENV MIGRATE_PROCESS_TIME=0

RUN microdnf install procps vi
COPY test-readiness.sh /usr/local/bin/
COPY migrate_db /usr/local/bin/

ENTRYPOINT [ "/usr/local/bin/test-readiness.sh" ]