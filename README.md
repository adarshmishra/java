## Java Dockerfile

[Java](http://http://www.java.com/en/) [Dockerfile](https://www.docker.io/learn/dockerfile/).  Also published to public [Docker Registry](https://index.docker.io/).

### Installation

1. Install [Docker](https://www.docker.io)

1. Download image from public Docker Registry: 

  ```
  docker pull dockerize/java
  ```

   or build an image from the Dockerfile: 
   
   ```
   docker build -t dockerize/java github.com/dockerize/java
   ```

### Usage
```
docker run -it --rm dockerize/java
```

Run ```java```
```
docker run -it --rm dockerize/java java

```

Run ```javac```
```
docker run -it --rm dockerize/java javac
```
