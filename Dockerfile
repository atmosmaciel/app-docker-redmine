FROM redmine:latest

MAINTAINER User Namer <username@email.com>

# add debian-contrib-non-free repository
RUN echo deb http://deb.debian.org/debian stretch contrib non-free | tee /etc/apt/sources.list.d/debian-contrib-non-free.list

# install unzip and dependences
RUN apt-get update && apt-get install unzip apt-utils -y -f

# copy the plugins into the Redmine directory
COPY plugins/ /usr/src/redmine/plugins

# enters the Redmine plugin directory
WORKDIR /usr/src/redmine/plugins

# unzip files
RUN for x in `ls *.zip`;do unzip $x;done

# remove .zip files
RUN rm *.zip

# back to the redmine root folder
WORKDIR /usr/src/redmine/

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]

###