FROM pytorch/pytorch

RUN apt-get -y update && \
    apt-get -y install curl && \
    curl -H 'Cache-Control: no-cache' \
    https://raw.githubusercontent.com/nimbix/image-common/master/install-nimbix.sh \
    | bash

# Expose port 22 for local JARVICE emulation in docker
EXPOSE 22

