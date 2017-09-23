#!/bin/sh -e
docker build -t ktruckenmiller/drone-s3 .
# docker run --rm -it \
#   -e PLUGIN_BDP_FILE=".bdp" \
#   -e CI_WORKSPACE=$(pwd) \
#   -v $(pwd):/work \
#   -v $(pwd)/code/push_up.py:/push_up.py \
#   ktruckenmiller/drone-s3
docker push ktruckenmiller/drone-s3
git add .
git commit -m "update"
git push
