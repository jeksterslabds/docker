FROM archlinux:latest

RUN useradd docker \
	&& mkdir /home/docker \
	&& chown docker:docker /home/docker \
	&& addgroup docker staff

RUN pacman -Syu --needed --noconfirm \
  git \
  base-devel \
  openblas \
  r \
  vim

RUN useradd docker \
	&& mkdir /home/docker \
	&& chown docker:docker /home/docker \
	&& addgroup docker staff

CMD ["R"]
