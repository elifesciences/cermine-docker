FROM jetty:9-alpine

USER root

ARG CERMINE_VERSION=1.13

RUN wget \
  --output-document $JETTY_BASE/webapps/ROOT.war \
  https://maven.ceon.pl/artifactory/kdd-releases/pl/edu/icm/cermine/cermine-web/$CERMINE_VERSION/cermine-web-$CERMINE_VERSION.war

USER jetty
