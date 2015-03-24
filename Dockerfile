FROM python

ENTRYPOINT ["/usr/local/bin/devpi-server", "--port", "3141", "--restrict-modify", "root"]
EXPOSE 3141
VOLUME /data
CMD ["--host", "0.0.0.0", "--serverdir", "/data"]

RUN pip install devpi-server \
 && rm -R ~/.cache
