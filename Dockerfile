FROM debian:9-slim
LABEL maintainer="Hamdi Fourati <contact@hamdifourati.info>"

EXPOSE 3306

RUN apt -qq update && apt -qq install -y wget && \
    wget https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 -O cloud_sql_proxy && \
    chmod +x cloud_sql_proxy

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
