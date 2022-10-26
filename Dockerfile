FROM nginx
LABEL MAINTAINER "Francois Zhao"
ENV MY_HOST localhost
COPY dotask.sh /
RUN apt-get update && apt-get install -y git sed
RUN mkdir /mycode && cd /mycode && git clone https://github.com/Rorofy/DES424_6522808244.git
RUN cp -r /mycode/DES424_6522808244/src /usr/share/nginx/html/mygitweb
CMD ["sh","/dotask.sh"]