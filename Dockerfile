FROM nginx
RUN echo "Copy File Srom Source"
COPY ./html/* /usr/share/nginx/html
EXPOSE 80