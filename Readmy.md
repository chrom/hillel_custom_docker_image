# Home work

Create image based in Ubuntu 18.04 with:
* port forward from 80 to 8080
* custom page
* started http server

## Building image
```docker build -t ratio/hillel_hw_dockerfile:1.0.0 .```

## Run image
```docker run -di -p 8080:8080  --name=hillel  ratio/hillel_hw_dockerfile:1.0.0```
