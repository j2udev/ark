FROM boerngenschmidt/ark-docker

ENV CROSSPLAY true

# Copy to 2 places here to account for install and upgrade use cases.
COPY arkmanager.cfg /home/steam/arkmanager.cfg
COPY arkmanager.cfg /ark/arkmanager.cfg
