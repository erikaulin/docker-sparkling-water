#!/usr/bin/env bash
docker pull erikaulin/sparklingwater
docker run -i -t -P --link spark_master:spark_master erikaulin/sparklingwater /spark-shell.sh "$@"
