#!/usr/bin/env bash
docker pull erikaulin/sparklingwater
docker run -i -t -P --link spark-master:spark-master erikaulin/sparklingwater /spark-shell.sh "$@"
