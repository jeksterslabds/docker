FROM archlinux/base:latest
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
RUN useradd -ms /bin/bash user \
	&& chown user:user /home/user
RUN Rscript https://raw.githubusercontent.com/jeksterslabds/docker/master/r_packages.R
CMD ["R"]
