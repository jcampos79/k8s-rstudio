# Use rocker r-studio as baseline
FROM rocker/rstudio:katest

RUN apt-get  update && apt-get install -y \
    python3 \
    python3-pip \
    git \
    curl \
    htop \
    && rm -rf /var/lib/apt/lists/* \

RUN R -e "install.packages(c('tydiverse','data.table','ggplot2'), repos='https://cloud.r-project.org/')"

EXPOSE 8787
