FROM vaultwarden/server:latest

# Symlink /data to point to /home/container/data
RUN ln -s /home/container/data /

# Add the new start-up script
COPY start-pterodactyl.sh /start-pterodactyl.sh

CMD ["/start-pterodactyl.sh"]