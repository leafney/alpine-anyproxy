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

