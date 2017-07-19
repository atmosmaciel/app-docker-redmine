FROM redmine:latest

MAINTAINER User Namer <username@email.com>

# add debian-contrib-non-free repository
RUN echo deb http://deb.debian.org/debian stretch contrib non-free | tee /etc/apt/sources.list.d/debian-contrib-non-free.list

# install unzip and dependences
RUN apt-get update && apt-get install unzip apt-utils -y -f

# copia os plugins para dentro do diterório do Redmine
COPY plugins/ /usr/src/redmine/plugins

# entra no diretório de plugins do Redmine
WORKDIR /usr/src/redmine/plugins

# Descompacta os arquivos
RUN for x in `ls *.zip`;do unzip $x;done

#remove os arquivos .zip
RUN rm *.zip

# renomeia os arquivos para caixa baixa
# RUN find /usr/src/redmine/plugins -depth -exec rename 's/(.*)\/([^\/]*)/$1\/\L$2/' {} \;

# volta para a pasta raiz do redmine
WORKDIR /usr/src/redmine/

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]

###
