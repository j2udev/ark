FROM turzam/ark:1.3

ENV GIT_TAG v1.6.53
ENV CROSSPLAY_FLAG true

WORKDIR /ark
# COPY Game.ini /ark/Game.ini
# COPY GameUserSettings.ini /ark/GameUserSettings.ini
# COPY ./arkmanager.cfg /ark/arkmanager.cfg
# RUN mkdir -p /ark/server/ShooterGame/Saved/Config/LinuxServer
# WORKDIR /ark/server/ShooterGame/Saved/Config/LinuxServer
# COPY Game.ini Game.ini
# COPY GameUserSettings.ini GameUserSettings.ini
# COPY Game.ini server/ShooterGame/Saved/Config/LinuxServer/Game.ini
# COPY GameUserSettings.ini server/ShooterGame/Saved/Config/LinuxServer/GameUserSettings.ini
COPY arkmanager.cfg /home/steam/arkmanager.cfg

# WORKDIR /ark


# FROM turzam/ark:1.3

# ENV GIT_TAG v1.6.53
# ENV CROSSPLAY_FLAG true

# WORKDIR /ark
# # COPY Game.ini /ark/Game.ini
# # COPY GameUserSettings.ini /ark/GameUserSettings.ini
# # COPY ./arkmanager.cfg /ark/arkmanager.cfg
# RUN mkdir -p /ark/server/ShooterGame/Saved/Config/LinuxServer
# WORKDIR /ark/server/ShooterGame/Saved/Config/LinuxServer
# COPY Game.ini Game.ini
# COPY GameUserSettings.ini GameUserSettings.ini
# # COPY Game.ini server/ShooterGame/Saved/Config/LinuxServer/Game.ini
# # COPY GameUserSettings.ini server/ShooterGame/Saved/Config/LinuxServer/GameUserSettings.ini
# COPY arkmanager.cfg /home/steam/arkmanager.cfg

# WORKDIR /ark
