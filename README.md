# coreinsi-web
Docker build for the XII COREINSI web.

## Building the container

```
cd <<path_to_cloned_repo>>
docker build -t <<tag>> --rm .
```

## Running the container

```
docker run --name <<name>> -p 80:80 -d <<image-tag>>
```
