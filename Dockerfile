FROM redmine:latest

MAINTAINER User Namer <username@email.com>

COPY plugins/ /usr/src/redmine/plugins

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]

###
