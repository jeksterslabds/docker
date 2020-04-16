FROM archlinux/base

RUN pacman -Syu --needed --noconfirm \
      pacman-contrib \
      base-devel \
      git \
      openblas \
      r \
      vim \
    && paccache -rfk0

CMD Rscript -e 'install.packages("remotes")'
