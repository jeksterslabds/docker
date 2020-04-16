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
RUN useradd -ms /bin/bash docker \
	&& mkdir /home/docker \
	&& chown docker:docker /home/docker \
	&& addgroup docker
USER docker
WORKDIR /home/docker
RUN https://raw.githubusercontent.com/jeksterslabds/docker/master/r_packages.R
