#!/usr/bin/env bash
docker pull erikaulin/sparklingwater
docker run -d -t -P --link spark_master:spark_master erikaulin/sparklingwater /start-worker.sh "$@"
