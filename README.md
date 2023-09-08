# Teste com Rails 7, StimulusJs, Minio, ElasticSearh e Docker.
![image](https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white)
![image](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![image](https://img.shields.io/badge/Elastic-FFFFFF?style=for-the-badge&logo=elastic&logoColor=black)
![image](https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white)
![image](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![image](https://img.shields.io/badge/CSS-239120?&style=for-the-badge&logo=css3&logoColor=white)
![image](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)
![image](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white)
![image](https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white)
![image](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![image](https://img.shields.io/badge/Nginx-009639?style=for-the-badge&logo=nginx&logoColor=white)
![image](https://img.shields.io/badge/Git-E34F26?style=for-the-badge&logo=git&logoColor=white)
<hr>
<img src="https://github.com/regiscarlos13/teste_rails7_minio_elasticsearch_docker/blob/main/app/assets/images/diagramas.png" >
<img src="https://github.com/regiscarlos13/teste_rails7_minio_elasticsearch_docker/blob/main/app/assets/images/tela.png" >
<hr>

> Esse projeto visa testar os conhecimento em Ruby on Rails, temos cobertura de teste feita com rspec, storage de armazemaento feita em Minio e consulta com ElasticSerch. Também foi usado no frontend o stimulusjs, foram criados templates padrão para o projeto dentro da pasta lib, assim as próximas telas ficaram mais rapida o desenvolvimento. Foi criados helps para evitar a repetição de codigo e deixas as telas mais limpas.

### Ajustes e melhorias

O projeto ainda está em desenvolvimento e as próximas atualizações serão voltadas nas seguintes tarefas:

- [x] Diagrama de Dados
- [x] Ruby on Rails 7
- [x] Bootstrap
- [x] Stimulus
- [x] DataTables
- [x] Libs para templates
- [x] Helps
- [x] Postgres
- [x] MinIo
- [x] ElasticSearch
- [x] Docker
- [x] Nginx para deploy
- [ ] Rabbimqt
- [ ] Redis

## 💻 Pré-requisitos

Antes de começar, verifique se você atendeu aos seguintes requisitos:

* Você instalou a versão  `<docker / 24.0.5>`
* Você instalou a versão  `<docker-compose / 2.16.0>`
* Você tem uma máquina `<Windows / Linux / Mac>`.

## 🚀 Instalando projeto

Para instalar o projeto, siga estas etapas:

1 - baixe a aplicação:
```
<git clone https://github.com/regiscarlos13/teste_rails7_minio_elasticsearch_docker.git>
```

2 - acesse a pasta:
```
<cd teste_rails7_minio_elasticsearch_docker>
```
3 - rode o camando a baixo para build image da aplicação - OBS: So precisar rodar uma vez:
```
<make build>
```

4 - rode o camando a baixo para rodar as imagem:
```
<make up>
```

5 - criar banco e popular:
```
<make setup>
```

6 - rode os teste:
```
<make teste>
```

7 - para as imagem:
```
<make down>
```


## ☕ Usando projeto>

Obs: para usar a aplicação, uma vez que executou os passos anteriores e parou as imagem, voçê so precisar usar o item: 4 (make up).
para

Para usar projeto, acesse:

```
<http://localhost:8001/>
```
