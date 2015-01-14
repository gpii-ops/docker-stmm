## GPII Statistical Matchmaker Dockerfile


This repository is used to build [Statistical Matchmaker](https://github.com/REMEXLabs/GPII-Statistical-Matchmaker) Docker images.


### Port(s) Exposed

* `8077 TCP`


### Base Docker Image

* [inclusivedesign/nodejs](https://registry.hub.docker.com/u/inclusivedesign/nodejs/)


### Download using either of the following commands:

    docker pull gpii/stmm

    docker pull gpii/stmm:<first seven characters of a git commit hash>

#### Run `stmm`

```
docker run \
-d \
--rm=true \
--name="stmm" \
-p 8077:8077 \
gpii/stmm
```


### Build your own image

In order to build an image the Statistical MatchMaker Git repository working directory should exist wherever the contents of this directory are saved. For transparent image versioning that maps directly to the official Git repository each new image should be tagged using the repository's short commit hash. For example:

    git clone https://github.com/REMEXLabs/GPII-Statistical-Matchmaker.git

    docker build --rm=true -t gpii/stmm:$(git --git-dir=GPII-Statistical-Matchmaker/.git --work-tree=GPII-Statistical-Matchmaker rev-parse --short HEAD) .
