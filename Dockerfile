FROM turzam/ark:1.3

ENV GIT_TAG v1.6.53
ENV CROSSPLAY_FLAG true

COPY Game.ini /ark/Game.ini
COPY GameUserSettings.ini /ark/GameUserSettings.ini
COPY arkmanager.cfg /ark/arkmanager.cfg
