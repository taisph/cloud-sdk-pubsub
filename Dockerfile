FROM google/cloud-sdk:slim

RUN apt-get install -y \
    google-cloud-sdk-pubsub-emulator \
    openjdk-11-jre-headless \
  && rm -rf /var/lib/apt/lists/*

RUN pip3 install --no-cache-dir --upgrade google-cloud-pubsub

RUN git clone --depth 1 --single-branch https://github.com/googleapis/python-pubsub.git \
  && rm -rf python-pubsub/.git
