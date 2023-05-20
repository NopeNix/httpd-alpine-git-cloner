![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/NopeNix/httpd-alpine-git-cloner/Build%20and%20Push%20to%20Docker%20Hub.yml?label=Build%20and%20Push%20to%20Docker%20Hub)
![GitHub issues](https://img.shields.io/github/issues-raw/NopeNix/httpd-alpine-git-cloner)
![Docker Stars](https://img.shields.io/docker/stars/nopenix/httpd-alpine-git-cloner)
![GitHub Repo stars](https://img.shields.io/github/stars/NopeNix/httpd-alpine-git-cloner?label=GitHub%20Stars)
![GitHub top language](https://img.shields.io/github/languages/top/NopeNix/httpd-alpine-git-cloner)
# httpd-alpine-git-cloner
Clones into a git project using a token and uses the files from the folder "htdocs" inside the repo

## Example docker-compose:
```yml
version: "3"
services:
    app:
        image: nopenix/httpd-alpine-git-cloner
        envoronment:
            - GITTOKEN=YOURGITTOKENHERE
            - GITREPO=username/repo
        ports:
            - 80:80
```