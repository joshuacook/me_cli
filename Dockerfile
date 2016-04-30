FROM phusion/passenger-ruby22

MAINTAINER Joshua Cook <me@joshuacook.me>

ENV HOME /root

CMD [ "/sbin/my_init" ]

EXPOSE 80

RUN rm -f /etc/service/nginx/down
RUN rm /etc/nginx/sites-enabled/default
ADD app/config/webapp.conf /etc/nginx/sites-enabled/webapp.conf

WORKDIR /tmp
ADD app/Gemfile /tmp/
ADD app/Gemfile.lock /tmp/
RUN bundle install

COPY app /home/app
RUN chown -R app:app /home/app
