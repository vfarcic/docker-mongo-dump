FROM mongo
MAINTAINER Viktor Farcic "viktor@farcic.com"

COPY run.sh /
RUN chmod a+x /run.sh
RUN mkdir /dump

CMD ['/run.sh']

VOLUME  /dump
ENV HOST mongo
ENV DB TechnologyConversations