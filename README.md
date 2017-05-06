Perigord
===

Perigord is an easy to use truffle environment which already includes a testrpc, so there's no need to link external 
environments anymore.

# Building the docker image

```
docker build -t cindercloud:perigord .
```

# Running the container

```
docker run -v /path/to/project:/truffle/project -d --name truffle cindercloud:perigord
```