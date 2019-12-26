FROM node:13.2.0-alpine3.10
LABEL maintainer="leafney <babycoolzx@126.com>"

ENV ANYPROXY_VERSION=4.1.0

RUN apk update && \
    apk add tzdata && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    rm -rf /var/cache/apk/* && \
    yarn global add anyproxy@$ANYPROXY_VERSION && \
    yarn cache clean

EXPOSE 8001 8002

CMD [ "anyproxy" ]