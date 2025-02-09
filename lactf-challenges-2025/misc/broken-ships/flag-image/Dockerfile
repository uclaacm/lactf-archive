FROM debian:bookworm-slim
RUN echo "lactf{fake_flag}" > flag.txt
COPY flag.txt /
RUN rm flag.txt
RUN echo "flag" > /flag.txt
CMD ["sleep", "infinity"]