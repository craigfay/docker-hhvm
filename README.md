# About
This repo is a demonstration of a Dockerized HHVM backend

# Usage
* Start container: `docker-compose up`
* Start development shell: `docker exec -it docker-hhvm_hhvm_1 bash`
* Generate autoload map: `vendor/bin/hh-autoload`
* Run binary: `hhvm bin/square_some_things.hack`
