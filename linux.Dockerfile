FROM lacledeslan/gamesvr-blackmesa

ARG BUILD_DATE=unspecified \
    BUILD_NODE=unspecified \
    GIT_REVISION=unspecified

LABEL architecture="amd64" \
      com.lacledeslan.build-node="${BUILD_NODE}" \
      maintainer="Laclede's LAN <contact@lacledeslan.com>" \
      org.opencontainers.image.created="${BUILD_DATE}" \
      org.opencontainers.image.description="Laclede's LAN Black Mesa Freeplay Dedicated Server" \
      org.opencontainers.image.revision="${GIT_REVISION}" \
      org.opencontainers.image.source="https://github.com/LacledesLAN/gamesvr-blackmesa-freeplay" \
      org.opencontainers.image.vendor="Laclede's LAN"

# UPDATE USERNAME & ensure permissions
RUN usermod -l BlackMesaFreeplay BlackMesa && \
    mkdir -p /app/bms/logs && \
    chmod -R 774 /app/bms/logs;

COPY --chown=BlackMesaFreeplay:root ./sourcemod.linux /app/bms/

COPY --chown=BlackMesaFreeplay:root ./sourcemod-configs /app/bms/

COPY --chown=BlackMesaFreeplay:root ./dist /app/bms/

COPY --chown=BlackMesaFreeplay:root ./ll-tests /app/ll-tests

RUN chmod +x /app/ll-tests/*.sh && \
    chmod -R 774 /app/bms/addons && \
    chmod -R 774 /app/bms/cfg && \
    chmod -R 774 /app/bms/logs;

USER BlackMesaFreeplay

WORKDIR /app/

CMD ["/bin/bash"]
