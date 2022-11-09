FROM openjdk:jre-slim

ADD https://github.com/pinterest/ktlint/releases/download/0.47.1/ktlint /usr/local/bin/ktlint
RUN chmod +x /usr/local/bin/ktlint

ENTRYPOINT ["ktlint"]
