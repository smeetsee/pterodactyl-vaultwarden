FROM vaultwarden/server:latest

# Symlink /data to point to /home/container/data
RUN rm -rf /data && ln -s /home/container/data /

ENV DATABASE_URL=/home/container/data/db.sqlite3

CMD ["/bin/sh", "entrypoint.sh"]