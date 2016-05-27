#!/usr/bin/env bash
docker pull erikaulin/sparklingwater
docker run -d -t -P --name spark_master erikaulin/sparklingwater /start-master.sh "$@"
