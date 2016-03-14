# discovery.etcd.io

This code powers the public service at https://discovery.etcd.io. The API is
documented in the etcd clustering documentation:

https://github.com/coreos/etcd/blob/master/Documentation/clustering.md#public-etcd-discovery-service

You can change the Base URI for tokens by changing TOKEN_BASEURI environment
variable (which is mandatory).

## Docker Container

You may run the service in a docker container:

```
docker pull quay.io/coreos/discovery.etcd.io
docker run -e TOKEN_BASEURI="https://discovery.etcd.io" -d -p 80:8087 quay.io/coreos/discovery.etcd.io
```

## Development

discovery.etcd.io uses devweb for easy development. It is simple to get started:

```
./devweb
curl --verbose -X PUT localhost:8087/new
```
