FROM rockylinux:9
LABEL maintainer="Cloudwebsite"
RUN yum -y install nginx
COPY index.html /usr/share/nginx/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80