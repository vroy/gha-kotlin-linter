FROM ubuntu:18.04

RUN apt-get update && apt-get install -y curl openjdk-11-jdk

ARG KTLINT_VERSION
RUN curl -sSLO https://github.com/pinterest/ktlint/releases/download/0.26.0/ktlint && \
  chmod +x ktlint && \
  mv ktlint /usr/local/bin/ktlint

ENTRYPOINT ["ktlint"]
