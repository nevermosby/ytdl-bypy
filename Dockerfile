FROM python:2.7
MAINTAINER David Li <legendarilylwq@gmail.com>

RUN pip install requests youtube-dl

RUN git clone https://github.com/nevermosby/bypy.git /usr/app/bypy
RUN cp /usr/app/bypy/bypy.py /usr/local/bin/

COPY start-to-know.sh /usr/app/start-to-know.sh
RUN chmod +x /usr/app/start-to-know.sh

VOLUME ['/usr/app/video']

WORKDIR /usr/app/

CMD ["./start-to-know.sh"]

