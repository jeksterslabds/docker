FROM: archlinux

RUN useradd docker \
	&& mkdir /home/docker \
	&& chown docker:docker /home/docker \
	&& addgroup docker staff

RUN pacman -Syu --needed --noconfirm \
  openblas \
  r \
  vim

RUN useradd docker \
	&& mkdir /home/docker \
	&& chown docker:docker /home/docker \
	&& addgroup docker staff

CMD ["R"]
