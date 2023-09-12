FROM apache/spark:3.4.1-scala2.12-java11-python3-ubuntu

WORKDIR /app
ENV SBT_VERSION="1.9.4"

USER root

RUN mkdir /jars && curl -L -o /opt/spark/jars/spark-cassandra-connector.jar https://repo1.maven.org/maven2/com/datastax/spark/spark-cassandra-connector-assembly_2.12/3.4.1/spark-cassandra-connector-assembly_2.12-3.4.1.jar

COPY requirements.txt /app

RUN ln -sf $(which python3) /usr/bin/python && \
    ln -sf $(which pip3) /usr/bin/pip

RUN python3 -m pip install --upgrade pip
RUN pip install -r requirements.txt

#ENTRYPOINT ["bash"]