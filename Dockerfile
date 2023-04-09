# syntax=docker/dockerfile:1

FROM jekyll/jekyll

WORKDIR /app

COPY Gemfile .

# pre-create file to be overwritten by bundle install
RUN touch Gemfile.lock && \
    chmod 666 Gemfile.lock && \
    bundle install

COPY . .

RUN chmod -R +w .jekyll-cache && \
    chmod -R o+w .jekyll-cache && \
    chmod -R +w _site && \
    chmod -R o+w _site

CMD ["/bin/bash"]

