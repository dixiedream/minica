# Minica

A simple Docker container for using https://github.com/jsha/minica


### Prerequisites

Docker

### Installing

Clone this repo

Build image with

```
docker build -t minica .
```

Run minica with

```
docker run -it --rm -v $PWD:/app minica
```

Example: create certificates for localhost/127.0.0.1

```
docker run -it --rm -v $PWD:/app minica --domains 127.0.0.1
```

## Built With

* [Docker](https://docs.docker.com/install/) - Containers runner

## Authors

* **Alessandro Lucarini** - *Initial work* - [dixiedream](https://github.com/dixiedream)


## Acknowledgments

* **Jacob Hoffman-Andrews** - [jsha](https://github.com/jsha)