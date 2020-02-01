start-zookeeper:
	# start up zookeeper to manage a local single-instance cluster
	bin/zookeeper-server-start.sh config/zookeeper.properties

start-kafka:
	# start the kafka server
	bin/kafka-server-start.sh config/server.properties

pub:
	# produce/publish to a topic
	bin/kafka-console-producer.sh --broker-list localhost:9092 --topic dexkafka

sub:
	# consume from/subscribe to that topic
	bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic dexkafka --from-beginning

