FROM ubuntu

USER root

RUN apt update && \
    apt install nginx -y 
 
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]