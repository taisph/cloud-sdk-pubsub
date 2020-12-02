# FROM google/cloud-sdk:alpine
#
# RUN gcloud components install beta pubsub-emulator --quiet \
#   && rm -rf /google-cloud-sdk/.install/.backup /google-cloud-sdk/.install/.download
#
# RUN apk add --no-cache --update \
#     g++ \
#     openjdk8-jre \
#     python3-dev \
#   && git clone https://github.com/googleapis/python-pubsub.git \
#   && pip3 install --upgrade google-cloud-pubsub

FROM google/cloud-sdk:slim

RUN apt-get install -y \
    google-cloud-sdk-pubsub-emulator \
    'g++' \
    openjdk-11-jre-headless \
    python3-dev \
  && rm -rf /var/lib/apt/lists/* \
  && git clone https://github.com/googleapis/python-pubsub.git \
  && pip3 install --upgrade google-cloud-pubsub
