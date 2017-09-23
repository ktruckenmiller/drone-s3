#!/bin/sh -ex
docker build -t ktruckenmiller/drone-s3 .
# docker run --rm -it \
#   --entrypoint="sh" \
#   -e PLUGIN_BDP_FILE=".bdp" \
#   -e CI_WORKSPACE=$(pwd) \
#   -v $(pwd):/work \
#   ktruckenmiller/drone-s3
docker push ktruckenmiller/drone-s3
git add .
git commit -m "update"
git push
