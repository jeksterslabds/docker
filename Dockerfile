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
RUN useradd -ms /bin/bash useR
USER useR
WORKDIR /home/useR
ADD https://raw.githubusercontent.com/jeksterslabds/docker/master/r_packages.R /home/useR
RUN Rscript r_packages.R
