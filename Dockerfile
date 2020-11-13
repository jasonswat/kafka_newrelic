FROM newrelic/infrastructure:1.12.6
RUN apk --no-cache add openjdk11
RUN wget -O - http://download.newrelic.com/infrastructure_agent/binaries/linux/noarch/nrjmx_linux_1.5.2_noarch.tar.gz | tar xz -C /
RUN wget -O - https://download.newrelic.com/infrastructure_agent/binaries/linux/amd64/nri-kafka_linux_2.13.7_amd64.tar.gz | tar xz -C /
