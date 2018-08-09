# escape=`
FROM lacledeslan/gamesvr-blackmesa

ARG BUILDNODE="unspecified"
ARG SOURCE_COMMIT

LABEL maintainer="Laclede's LAN <contact @lacledeslan.com>" `
      com.lacledeslan.build-node=$BUILDNODE `
      org.label-schema.schema-version="1.0" `
      org.label-schema.url="https://github.com/LacledesLAN/README.1ST" `
      org.label-schema.vcs-ref=$SOURCE_COMMIT `
      org.label-schema.vendor="Laclede's LAN" `
      org.label-schema.description="Laclede's LAN Black Mesa Freeplay Dedicated Server" `
      org.label-schema.vcs-url="https://github.com/LacledesLAN/gamesvr-blackmesa-freeplay"

# UPDATE USERNAME & ensure permissions
RUN usermod -l BlackMesaFreeplay BlackMesa &&`
    mkdir -p /app/bms/logs &&`
    chmod -R 774 /app/bms/logs;

COPY --chown=BlackMesaFreeplay:root ./sourcemod.linux /app/bms/
COPY --chown=BlackMesaFreeplay:root ./sourcemod-configs /app/bms/
COPY --chown=BlackMesaFreeplay:root ./dist /app/bms/
COPY --chown=BlackMesaFreeplay:root ./ll-tests /app/ll-tests

RUN chmod +x /app/ll-tests/*.sh &&`
    chmod -R 774 /app/bms/addons &&`
    chmod -R 774 /app/bms/cfg &&`
    chmod -R 774 /app/bms/logs;

USER BlackMesaFreeplay

WORKDIR /app/

CMD ["/bin/bash"]

ONBUILD USER root
