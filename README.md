Docker container for sparkling water stand alone cluster
=================================

This repository contains a set of scripts and configuration files to run a [Apache Spark](https://spark.apache.org/) standalone cluster together with [Sparkling water](http://www.h2o.ai/product/sparkling-water/) from [Docker](https://www.docker.io/) container.

To run master execute:

```
./start-master.sh
```

To run worker execute:

```
./start-worker.sh
```
You can run multiple workers. Every worker would be able to find master by it's container name "spark-master".

To run spark shell against this cluster execute:

```
./spark-shell.sh
```

To run Run Sparkling Shell:

```
bin/sparkling-shell
```
Sparkling Shell accepts common Spark Shell arguments.
For example, to increase memory allocated by each executor, use the spark.executor.memory parameter: bin/sparkling-shell --conf "spark.executor.memory=4g"

Initialize H2OContext:
```
import org.apache.spark.h2o._
import org.apache.spark.examples.h2o._
val hc = H2OContext.getOrCreate(sc)
```
