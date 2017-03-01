# Kibana with Consul Template
============================

A Consul Template powered Kibana docker container.

## Supported Tags:
* `5.2-0.18.0`, `latest` - kibana v5.2 with consul template version 0.18.0 ([5.2-0.18.0/Dockerfile](https://github.com/stakater/dockerfile-kibana-with-consul-template/blob/master/5.2/Dockerfile))
* `4.5-0.18.0` - kibana v4.5 with consul template version 0.18.0 ([4.5-0.18.0/Dockerfile](https://github.com/stakater/dockerfile-kibana-with-consul-template/blob/master/4.5/Dockerfile))

`docker run stakater/kibana-with-consul-template:latest`

This image is intended to be run together with Consul and Consul-Template

The daemon consul-template queries a Consul instance and updates any number of specified templates on the file system. As an added bonus, consul-template can optionally run arbitrary commands when the update process completes.

```
consul-template -consul-addr=$CONSUL_URL -template="/templates/kibana.ctmpl:/opt/kibana/config/kibana.yml:service kibana restart"
```

## Consul Key-Value entries:
* The URL to the Elasticsearch instance to use for all your queries should be defined by the key `/kibana/elasticsearchURL`. It should be a complete url including the port as well. You may use consul dns entries too. Example: `http://elasticsearch-9200:9200`, where `elasticsearch-9200` is a consul dns entry.

Note: If the key `/kibana/elasticsearchURL` does not exist, the property will be assigned default value of `http://elasticsearch:9200`.

* If you are running kibana behind a proxy, and want to mount it at a path specify that path by the key `/kibana/basePath`. The basePath can't end in a slash. Example: `/kibana`