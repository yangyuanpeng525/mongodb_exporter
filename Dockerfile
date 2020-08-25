FROM   debian:stretch-slim    
ENV LANG zh_CN.UTF-8
RUN ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo Asia/Shanghai > /etc/timezone
COPY ./mongodb_exporter-linux-amd64  /usr/local/bin/mongodb_exporter
COPY ./start.sh  /start.sh
ENV   mongodb_exporter_IP 192.168.200.118 
ENV   mongodb_port 27017

CMD ["/start.sh", "run" ]
