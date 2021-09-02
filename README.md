# cpiped

[![Build Status](https://github.com/squat/cpiped/workflows/CI/badge.svg)](https://github.com/squat/cpiped/actions?query=workflow%3ACI)
[![Docker Pulls](https://img.shields.io/docker/pulls/squat/cpiped?color=blue)](https://hub.docker.com/repository/docker/squat/cpiped)

Multi-Arch Docker image for [cpiped](https://github.com/b-fitzpatrick/cpiped).

## Usage

```bash
mkfifo fifo
docker run -it --rm --device=/dev/snd -v $(pwd):/var/lib/cpiped squat/cpiped /var/lib/cpiped/fifo
```
