#!/bin/bash
version="1.4.5.2"

pkgname=kannel

docker build -t ${pkgname} -f Dockerfile-kannel .

REPO=europe-docker.pkg.dev/sandsiv-infrastructure/vochub

docker tag ${pkgname} $REPO/${pkgname}:${version}
docker push $REPO/${pkgname}:${version}
