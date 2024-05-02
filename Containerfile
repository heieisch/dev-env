FROM quay.io/fedora/fedora-toolbox:40

LABEL com.github.containers.toolbox="true" \
      usage="This image is meant to be used with the toolbox or distrobox command" \
      summary="A cloud-native terminal experience" \
      maintainer="heieisch"

COPY extra-packages /
RUN dnf -y upgrade
RUN dnf -y install $(<extra-packages)
RUN rm /extra-packages
