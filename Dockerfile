FROM archlinux:latest

RUN useradd docker \
	&& mkdir /home/docker \
	&& chown docker:docker /home/docker \
	&& addgroup docker staff

RUN pacman -Syu --needed --noconfirm \
      pacman-contrib \
      base-devel \
      git \
      openblas \
      r \
      vim \
    && paccache -rfk0

CMD ["R"]