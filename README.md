CLIN Fhir
=========

## Installation

### Prerequisite

Make sure you have Docker CE installed: <https://docs.docker.com/install/>

Docker is needed because it is used by both the `fhirutil` CLI and the
integration tests.

1. Git clone this repository

    ```shell
    git clone git@github.com:Ferlab-Ste-Justine/clin-fhir.git
    cd clin-fhir
    ```

2. Install the necessary requirements

    ```shell
    scripts/build.sh
    ```
   
3. Setup the Python virtual environment

    ```shell
    source ./venv/bin/activate
    ```
   
### 3. Validate the model and generate the Implementation Guide

```shell
fhirutil validate ./site_root/ig.ini --publisher_opts='-tx n/a'
```

### 4. Publish the model

```shell
fhirutil publish .site_root/input/resources/ --base_url="http://localhost:8080/hapi-fhir-jpaserver/fhir"
```
