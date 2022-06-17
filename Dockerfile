FROM openjdk:jre-slim

ADD https://github.com/pinterest/ktlint/releases/download/0.45.2/ktlint /usr/local/bin/ktlint
RUN chmod +x /usr/local/bin/ktlint

ENTRYPOINT ["ktlint"]
