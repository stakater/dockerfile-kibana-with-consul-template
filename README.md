# dockerfile-kibana-with-consul-template
============================

A Consul Template powered Kibana docker container.

## Supported Tags:
* `5.2-0.18.0`, `latest` - kibana v5.2 with consul template version 0.18.0 ([5.2-0.18.0/Dockerfile](https://github.com/stakater/dockerfile-kibana-with-consul-template/blob/master/5.2/Dockerfile))
* `4.5-0.18.0-rc1` - kibana v4.5 with consul template version 0.18.0-rc1 ([4.5-0.18.0-rc1/Dockerfile](https://github.com/stakater/dockerfile-kibana-with-consul-template/blob/master/4.5/Dockerfile))

`docker run stakater/kibana-with-consul-template:latest`

This image is intended to be run together with Consul and Consul-Template

The daemon consul-template queries a Consul instance and updates any number of specified templates on the file system. As an added bonus, consul-template can optionally run arbitrary commands when the update process completes.

```
consul-template -consul=$CONSUL_URL -template="/templates/kibana.ctmpl:/opt/kibana/config/kibana.yml:service kibana restart"
```
