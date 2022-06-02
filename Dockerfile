FROM busybox:lastest
#You can start with any base Docker Image that works for you

RUN apt-get -y update
RUN apt-get -y install git

RUN echo "#!/bin/bash\n" > /startscript.sh
RUN echo "mkdir github\n" >> /startscript.sh
RUN echo "cd github\n" >> /startscript.sh
RUN echo "git clone \$github\n" >> /startscript.sh
RUN echo "cd *\n" >> /startscript.sh
RUN echo "make\n" >> /startscript.sh

RUN chmod +x /startscript.sh

CMD /startscript.sh
