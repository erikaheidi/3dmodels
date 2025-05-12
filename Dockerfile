FROM openscad/openscad:latest

ARG UID=1000
WORKDIR /openscad

RUN useradd -u ${UID} -m -d /openscad openscad && \
    chown -R openscad:openscad /openscad

USER openscad
