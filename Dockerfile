FROM redmine:latest

MAINTAINER Atmos Maciel <atmos.souza@stc.ma.gov.br>

COPY plugins /usr/src/redmine/plugins

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]

###
