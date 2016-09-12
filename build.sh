#!/bin/bash

docker build -t yakaas/serverless .

docker run  -it  \
            -v $PWD/app:/tmp/app \
            --name sl yakaas/serverless \
            bash
            