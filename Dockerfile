FROM bash:5

COPY scripts/write.sh /

CMD ["bash", "/write.sh"]
