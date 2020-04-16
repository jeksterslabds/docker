FROM archlinux/base

RUN pacman -Syu --needed --noconfirm \
      pacman-contrib \
      base-devel \
      git \
      openblas \
      r \
      vim \
    && paccache -rfk0

RUN mkdir -p /opt/software/setup/R
ADD r_packages.R /opt/software/setup/R
RUN Rscript /opt/software/setup/R/r_packages.R
