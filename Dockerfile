FROM registry.access.redhat.com/ubi8/ubi-minimal:8.5-204

WORKDIR /app

COPY app/* /app/

USER root

RUN microdnf update -y && \
    rm -rf /var/cache/yum && \
    microdnf install nodejs && \
    microdnf install python3 && \
    microdnf install make && \
    microdnf install gcc && \
    microdnf install gcc-c++ && \
    microdnf install cmake && \
    cd /app && \
    rm -rf node_modules && \
    npm install --unsafe-perm && \
    chown -R 1001:0 /app

USER 1001

EXPOSE 8000

CMD [ "node", "server.js"]
