#!/usr/bin/env bash
docker pull erikaulin/sparklingwater
docker run -d -t -P --link spark-master:spark-master erikaulin/sparklingwater /start-worker.sh "$@"
