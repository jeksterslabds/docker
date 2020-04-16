FROM archlinux/base:latest
RUN pacman -Syu --needed --noconfirm \
      pacman-contrib \
      base-devel \
      git \
      wget \
      curl \
      tk \
      texlive-bin \
      gcc-fortran\
      openblas \
      r \
      vim \
      icu \
    && paccache -rfk0
ENV EDITOR vim
# set UTF-8 locale
RUN echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && locale-gen
ENV LANG en_US.UTF-8
RUN useradd -ms /bin/bash user \
      && chown -R user:user /home/user \
      && chmod 777 /home/user
USER user
WORKDIR /home/user
RUN wget https://raw.githubusercontent.com/jeksterslabds/docker/master/r_packages.R
RUN Rscript r_packages.R
CMD ["R"]
