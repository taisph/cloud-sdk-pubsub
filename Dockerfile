FROM google/cloud-sdk:395.0.0-slim@sha256:c92c5e829caea1505a9e43ec0a4c59007c8a3bdab64a6b2f712bb2c761880b15

RUN apt-get install -y \
    google-cloud-sdk-pubsub-emulator \
    openjdk-11-jre-headless \
  && rm -rf /var/lib/apt/lists/*

RUN pip3 install --no-cache-dir --upgrade google-cloud-pubsub

RUN git clone --depth 1 --single-branch https://github.com/googleapis/python-pubsub.git \
  && rm -rf python-pubsub/.git
