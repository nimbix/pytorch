FROM pytorch/pytorch

RUN apt-get -y update && \
    apt-get -y install curl && \
    curl -H 'Cache-Control: no-cache' \
    https://raw.githubusercontent.com/nimbix/image-common/master/install-nimbix.sh \
    | bash -s -- --setup-nimbix-desktop

RUN apt-get update && apt-get -y install perftest htop && apt-get clean

# Expose port 22 for local JARVICE emulation in docker
EXPOSE 22
EXPOSE 5901
EXPOSE 443
