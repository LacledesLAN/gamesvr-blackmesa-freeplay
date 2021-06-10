![Laclede's LAN Black Mesa Freeplay Server](https://raw.githubusercontent.com/LacledesLAN/gamesvr-blackmesa-freeplay/master/.misc/thumb-blackmesa-freeplay.png "Laclede's LAN Black Mesa Freeplay Server")

This repository is maintained by [Laclede's LAN](https://lacledeslan.com). Its contents are heavily tailored and tweaked for use at our charity LAN-Parties. For third-parties we recommend using this repo only as a reference example and then building your own using [gamesvr-blackmesa](https://github.com/LacledesLAN/gamesvr-blackmesa) as the base image for your customized server.

## Linux

[![](https://images.microbadger.com/badges/version/lacledeslan/gamesvr-blackmesa-freeplay.svg)](https://microbadger.com/images/lacledeslan/gamesvr-blackmesa-freeplay "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/lacledeslan/gamesvr-blackmesa-freeplay.svg)](https://microbadger.com/images/lacledeslan/gamesvr-blackmesa-freeplay "Get your own image badge on microbadger.com")

### Download

```shell
docker pull lacledeslan/gamesvr-blackmesa-freeplay;
```

### Run Self Tests

The image includes a test script that can be used to verify its contents. No changes or pull-requests will be accepted to this repository if any tests fail.

```shell
docker run -it --rm lacledeslan/gamesvr-blackmesa-freeplay ./ll-tests/gamesvr-blackmesa-freeplay.sh;
```

### Run Deathmatch Server

```shell
docker run --net=host -it lacledeslan/gamesvr-blackmesa-freeplay ./srcds_run -game bms +map gasworks -maxplayers 16 +sv_password aPassword +sv_lan 1;
```

### Run Team Deathmatch Server

```shell
docker run --net=host -it lacledeslan/gamesvr-blackmesa-freeplay ./srcds_run -game bms +map gasworks -maxplayers 16 +mp_teamplay 1 +sv_password aPassword +sv_lan 1;
```

### Available Maps

TODO:

## Getting Started with Game Servers in Docker

[Docker](https://docs.docker.com/) is an open-source project that bundles applications into lightweight, portable, self-sufficient containers. For a crash course on running Dockerized game servers check out [Using Docker for Game Servers](https://github.com/LacledesLAN/README.1ST/blob/master/GameServers/DockerAndGameServers.md). For tips, tricks, and recommended tools for working with Laclede's LAN Dockerized game server repos see the guide for [Working with our Game Server Repos](https://github.com/LacledesLAN/README.1ST/blob/master/GameServers/WorkingWithOurRepos.md). You can also browse all of our other Dockerized game servers: [Laclede's LAN Game Servers Directory](https://github.com/LacledesLAN/README.1ST/tree/master/GameServers).
