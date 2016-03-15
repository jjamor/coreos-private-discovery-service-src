# coreos-private-discovery-service-src

This code, originally a fork from https://github.com/coreos/discovery.etcd.io,
is the source for docker jjamor/coreos_private_discovery_service.

The API is documented in the etcd clustering documentation:

https://github.com/coreos/etcd/blob/master/Documentation/clustering.md#public-etcd-discovery-service

You can change the Base URI for tokens by changing TOKEN_BASEURI environment
variable (which is mandatory).

## Docker Container

You may run the service in a docker container:

```
docker pull jjamor/coreos_private_discovery_service
docker run -e TOKEN_BASEURI="https://discovery.private-domain.com" -d -p 80:8087 jjamor/coreos_private_discovery_service
```

