# Wireguard VPN host

This particular builder sets up a very basic Hetzner Cloud image based on Ubuntu 18.04 with Wireguard installed, but not configured. 

The builder expects the environment variable `HCLOUD_TOKEN` to be set in order to authenticate and run the build. This builder can be executed by setting this env var and running.

```
packer build wg-vpn.json
```

As of this moment the builder will:

1. Run base updates and clear any unneccesary packages

2. Set up the Wireguard repo

3. Install Wireguard

4. Basic sysctl changes to allow IP forwarding
