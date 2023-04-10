# syntax=docker/dockerfile:1

FROM jekyll/jekyll:latest

WORKDIR /app

COPY source ./source
COPY _config.yml .
COPY Gemfile .
COPY Gemfile.lock .

# make contents of WORKDIR writable to 'other' aka to jekyll
RUN chmod -R o+w .

RUN bundle install

CMD ["/bin/bash"]

