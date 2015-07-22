FROM            nginx
MAINTAINER      Rick Copeland <rick@synapp.io>

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

ENV PORT=80
EXPOSE 80

# Add in the config
ADD default /etc/nginx/conf.d/default.conf
ADD start-nginx.bash /bin/start-nginx.bash

CMD ["/bin/bash", "/bin/start-nginx.bash"]

