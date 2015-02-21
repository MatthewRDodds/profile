FROM gwjjeff/sinatra
# ADD public/ /var/www
# VOLUME /var/log/nginx
# CMD 'nginx'
EXPOSE 80
CMD ["bundle exec rackup -p 80"]
