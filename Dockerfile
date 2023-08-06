FROM vaultwarden/server:latest

# Symlink /data to point to /home/container/data
RUN rm -rf /data && ln -s /home/container/data /

# Add entrypoint script into container
COPY entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "entrypoint.sh"]