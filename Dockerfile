FROM google/cloud-sdk:alpine
RUN apk add --no-cache --update \
    g++ \
    openjdk8-jre \
    python3-dev \
  && gcloud components install beta pubsub-emulator --quiet \
  && git clone https://github.com/googleapis/python-pubsub.git \
  && pip3 install --upgrade google-cloud-pubsub \
  && rm -rf /google-cloud-sdk/.install/.backup /google-cloud-sdk/.install/.download
