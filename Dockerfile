FROM archlinux/base

RUN pacman -Syu --needed --noconfirm \
      pacman-contrib \
      base-devel \
      git \
      tk \
      texlive-bin \
      gcc-fortran\
      openblas \
      r \
      vim \
    && paccache -rfk0

RUN mkdir -p /opt/software/setup/R
ADD https://raw.githubusercontent.com/jeksterslabds/docker/master/r_packages.R /opt/software/setup/R
RUN Rscript /opt/software/setup/R/r_packages.R
