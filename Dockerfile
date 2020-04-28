FROM ubuntu

RUN apt-get update
RUN apt-get install -y rtorrent 

EXPOSE 52257
VOLUME /downloads
VOLUME /rtorrent-config
ENV TERM xterm

CMD rtorrent -n -o  import=/rtorrent-config/rtorrent.rc
