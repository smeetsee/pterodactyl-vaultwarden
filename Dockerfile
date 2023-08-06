FROM vaultwarden/server:latest

# Symlink /data to point to /home/container/data
RUN rm -rf /data && ln -s /home/container/data /

CMD ["/start.sh"]