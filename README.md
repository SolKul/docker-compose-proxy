# Combine proxy settings with docker-compose into one file

日本語:https://qiita.com/SolKul/items/2561c62734958c231b24

I made a repository that puts all proxy settings related to docker-compose into one file ( a file called `.env`).

## Advantages
The advantage of this repository.

- Proxy settings do not burn to docker image
- You wanted to distribute `docker-compose.yml` for someone else, but you didn't want to distribute it as is because the proxy settings in `docker-compose.yml` or `Dockerfile` contains authentication information. In this case, using this repository, the proxy settings are written in neither `docker-compose.yml` nor `Dockerfile` but only the `.env` file. What you have to do is only changing the `.env` file. It makes easy to distribute.

## Verification

Run `docker-compose up`, start up the container, and run bash in the container with the following command, and you will see the proper proxy settings.

```bash
$ docker-compose exec ${service name in docker-compse.yml(`test` in this repository)} bash  
root $ env | grep PROXY
### you will see the proper proxy settings. ###
```