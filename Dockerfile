FROM public.ecr.aws/readyset/readyset:latest

WORKDIR /opt/readyset

EXPOSE 5433/tcp
EXPOSE 6034/tcp

ENV STANDALONE=1 \
    DEPLOYMENT=dockerfile \
    DATABASE_TYPE=postgresql \
    UPSTREAM_DB_URL=${UPSTREAM_DATABASE_URL} \
    LISTEN_ADDRESS=0.0.0.0:5433 \
    QUERY_CACHING=explicit \
    PROMETHEUS_METRICS=1 \
    QUERY_LOG=1 \
    QUERY_LOG_AD_HOC=1 \
    DB_DIR=/opt/readyset \
    DEPLOYMENT_ENV=docker \
