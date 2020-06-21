FROM turzam/ark:1.3

ENV GIT_TAG v1.6.53
ENV CROSSPLAY_FLAG true

COPY arkmanager.cfg /ark/home/steam/arkmanager.cfg
