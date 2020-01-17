### alpine-anyproxy

#### AnyProxy Doc

[AnyProxy](http://anyproxy.io/cn/)

#### Run

```
docker run --name anyproxy -d --restart=always -p 8001:8001 -p 8002:8002 leafney/alpine-anyproxy
```

#### Test

```
curl http://httpbin.org/user-agent --proxy http://:8001
```

#### Example

Use custom rule file, for example:

```
FROM leafney/alpine-anyproxy:4.1.0-cn
LABEL maintainer="leafney <babycoolzx@126.com>"

RUN yarn config set registry https://registry.npm.taobao.org && \
    yarn add querystring cheerio axios

COPY wx_spider.js /app/spider.js

WORKDIR /app

CMD [ "anyproxy","-i","--rule","/app/spider.js" ]
```
