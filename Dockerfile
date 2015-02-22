FROM ruby:2.1.5-onbuild
RUN apt-get update && \
		apt-get install -y nginx
ADD config/unicorn.rb /usr/src/app/unicorn.rb
ADD config/nginx.conf /etc/nginx/nginx.conf
# EXPOSE 80
# CMD ["/usr/src/app/script/start"]
