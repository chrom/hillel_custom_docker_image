# Home work

Create image based in Ubuntu 18.04 with:
* port forward from 80 to 8080
* custom page
* started http server

## Building image
```docker build -t ratio/hillel_hw_dockerfile:1.0.0 .```


```docker scan ratio/hillel_hw_dockerfile```

$ docker stop container01
$ docker commit container01 image01
$ docker rm container01
$ docker run -d -P --name container01 image01