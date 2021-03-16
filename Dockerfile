FROM adoptopenjdk:11
ENTRYPOINT ["java", "-cp", "/stock-app/stock.jar", "com.scott.stocks.dataaggregator.DataAggregatorApplication"]

# Add the service itself
COPY target/${JAR_FILE} /stock-app/stock.jar
COPY target/lib /stock-app/lib