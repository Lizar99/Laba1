FROM debian
RUN mkdir -p /liza/blabla/
WORKDIR /liza/blabla/
COPY ./laba1.sh
RUN chmod +x ./laba1.sh
CMD ./laba1.sh