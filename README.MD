# Fork

This is a fork of [c-v-ya](https://github.com/c-v-ya/blackd) repository present here [fork](https://github.com/Rapiiidooo/blackd).

# Blackd [![build](https://github.com/c-v-ya/blackd/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/c-v-ya/blackd/actions/workflows/docker-publish.yml)

Run [Black](https://github.com/psf/black) Python formatter in Docker.

This image is available on [Dockerhub](https://hub.docker.com/r/vincentlejeune/blackd).

## Usage

Here is a short [article](https://dev.to/c_v_ya/black-with-docker-596k) author wrotes about setting this up. But in short:

```
docker run -d -p 45484:45484 --name blackd vincentlejeune/blackd
```

### docker-compose
```
    black:
        image: vincentlejeune/blackd
        container_name: black
        ports:
          - "45484:45484"
```

### Pycharm

Add [BlackConnect](https://plugins.jetbrains.com/plugin/14321-blackconnect) plugin and set config as on the screenshot below.

![BlackConnect config](https://raw.githubusercontent.com/c-v-ya/blackd/master/screenshots/BlackConnect.png "BlackConnect config")

Now your code should be formatted every time you save it!
