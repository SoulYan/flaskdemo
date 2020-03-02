#!/bin/bash
echo "Start deploying flask container..."
docker build -t flask-demo:1.0 .
docker run \
-it \
-d \
--name flask-demo \
-p 8080:8080 \
flask-demo:1.0
