FROM r-base:4.0.2
MAINTAINER Pablo Escobar <pablo.escobarlopez@unibas.ch>

# Install system deps
RUN apt-get update && \
    apt-get -y install \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev && \
    apt-get clean

# Install RColorBrewer from sources tarball to workaround error "package 'Rcolorbrewer' is not available (for R version 4.0.2)"
RUN Rscript -e "install.packages('https://cran.r-project.org/src/contrib/RColorBrewer_1.1-2.tar.gz', repos = NULL, type='source')"

# Install "BiocManager' package to install extra R packages
RUN Rscript -e "install.packages('BiocManager', repos='http://cloud.r-project.org')"

# Install deps for PCAviz
RUN Rscript -e "BiocManager::install(c('ggplot2', 'cowplot', 'countrycode', 'maps', 'htmlwidgets', 'plotly'))"

# Install PCAviz from github (latest commit 20200116)
RUN Rscript -e "install.packages('https://github.com/NovembreLab/PCAviz/archive/f5280bc.tar.gz', repos = NULL, type='source')"

# Install R packages from CRAN and BioConductor repos
RUN Rscript -e "BiocManager::install(c('ggplot2','ggtree', 'dplyr', 'ggnewscale', 'PCAviz', 'pcadapt', 'colorRamps', 'ape', 'phylobase', 'tidyr'))"
