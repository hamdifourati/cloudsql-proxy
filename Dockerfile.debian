FROM debian:9-slim
LABEL maintainer="Hamdi Fourati <contact@hamdifourati.info>"

EXPOSE 3306

ENV CLOUD_SQL_PROXY_VERSION "v1.14"

RUN apt -qq update && apt -qq install -y wget && \
    wget -nv https://storage.googleapis.com/cloudsql-proxy/${CLOUD_SQL_PROXY_VERSION}/cloud_sql_proxy.linux.386 -O cloud_sql_proxy && \
    chmod +x cloud_sql_proxy

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
