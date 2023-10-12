# config-writer

### Convert environment variables to config files

This can be used to write configuration files from a sidecar container to a shared volume.

The configurations are stored base64-encoded in an environment variable.

# Example

See [docker-compose.yml](examples/docker-compose.yml) for an example.

```bash
cd examples
docker compose up
```

Example configuration files are
- [xxx](examples/xxx)
- [yyy](examples/yyy)

- list of configuration names
    - `configs=xxx,yyy`
- base64-encoded configuration content
    - `config_xxx=IyBjb25maWcgZmlsZSBjb250ZW50Ck5BTUU9dGVzdApPVVRQVVQ9aGVsbG8gd29ybGQK`
    - `config_yyy=IyBjb25maWcgZmlsZSBjb250ZW50IHl5eQpOQU1FPWJhcgpPVVRQVVQ9aGVsbG8gYmFyCg==`
- location to write configuration to
    - `config_xxx_location=/opt/app/xxx`
    - `config_yyy_location=/opt/app/yyy`
