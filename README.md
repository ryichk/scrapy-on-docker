# Scrapy on Docker

## Set UP

```sh
docker build --tag project_name .
docker run -it --rm --name project_name -v $PWD:/app project_name

# Inside the docker container
scrapy startproject app ./

## Generate Spider
scrapy genspider <crawler_name> <target_site_url>
```
