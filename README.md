# scicore-stph-R-lang

Container providing [R lang](https://cran.r-project.org/) and some extra R packages


## Downloading the container with Singularity (specific version)

Check the available versions in the [Tags tab](https://hub.docker.com/r/pescobar/scicore-stph-r-lang/tags)

   `$> singularity pull scicore-stph-r-release-0.0.1.sif docker://pescobar/scicore-stph-r-lang:release-0.0.1`


## Using the container with singularity

   `$> singularity exec scicore-stph-r-release-0.0.1.sif R --version`


## Interactive shell inside the container with singularity

   `$> singularity shell scicore-stph-r-release-0.0.1.sif`
