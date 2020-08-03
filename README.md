# scicore-stph-R-lang

Container providing [R lang](https://cran.r-project.org/) and some extra R packages

## Downloading the container with Singularity (latest)

   `$> singularity pull "scicore-stph-r.sif" docker://pescobar/scicore-stph-R-lang:latest`

## Downloading the container with Singularity (specific version)

   `$> singularity pull "scicore-stph-r-0.0.1.sif" docker://pescobar/scicore-stph-R-lang:0.0.1`

## Using the container with singularity

   `$> singularity exec scicore-stph-r-0.0.1.sif R --help`

## Interactive shell inside the container with singularity

   `$> singularity shell scicore-stph-r-0.0.1.sif`
