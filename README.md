Redmine Conteiner App with Docker
---------------------------------

Este projeto entrega uma aplicação Redmine atualizada que roda em Docker e possui uma configuração simples para instalação de plugins no Redmine.

### Como usar

Faça o clone do projeto no seu diretório de trabalho com:

```https://github.com/atmosmaciel/app-docker-redmine.git```

Toda estrutura que você precisa está neste diretório.

#### Instalação de Plugins

Todos os plugins são instalados dentro da pasta *plugins*. Se você desejar adicionar um novo plugin à instância do Redmine instale este plugin dentro deste diretório.

##### Rodando o Dockerfile

Assim que você concluir a instalação do Plugin rode o seguinte comando na raíz do projeto:

```docker build -t vendor/myapp .```

Este comando vai adicionar o novo plugin à instância da aplicação que será criada.

Mais informações sobre o Dockerfile você pode encontrar na [documentação de referência](https://docs.docker.com/engine/reference/builder/).

##### Rodando o Docker Compose

Depois de gerar a imagem com os novos plugins instalados. Você irá utilizar o Docker Compose para subir a nova aplicação para isto utilize o seguinte comando:

```docker-compose up -d .```

O parâmentro *-d* fará com que o novo container seja executado em background.

### Como contribuir

Para contribuir com este projeto você pode utilizar o [Gitghub Flow](https://guides.github.com/introduction/flow/).

### Licença

Este projeto está sob uma licença [MIT](LICENSE.txt)
