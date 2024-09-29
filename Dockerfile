ARG RUBY_VERSION=3.2.5

FROM ruby:${RUBY_VERSION}-slim-bullseye
ARG JEKYLL_VERSION=4.3.3
ARG BUNDLER_VERSION=2.5.17

# need make (gcc -v, g++ -v, make -v)
RUN <<EOF
apt-get update
apt-get install -y gcc g++ make ruby-full build-essential
EOF

# RUN apt-get install -y build-essential # ruby-full

RUN useradd -m --home-dir /jekyll --gid 0 --shell /bin/bash jekyll


USER jekyll
WORKDIR /jekyll
# Set shell to bash so env vars set in bashrc are available for `RUN` instructions
#SHELL ["/bin/bash", "-c"]

# Configurations for `gem` upon bash startup
RUN <<EOF
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
#gem update --system 3.5.17
EOF

# Set ENV vars for correct installation location for `gem install` in the following `RUN` step*s(
# Note: `/jekyll` is $HOME
ENV GEM_HOME="/jekyll/gems"
ENV PATH="/jekyll/gems/bin:$PATH"

RUN gem install jekyll:${JEKYLL_VERSION} bundler:${BUNDLER_VERSION}

# CMD bundle exec jekyll serve --help
CMD bash

# syntax=docker/dockerfile:1
#
# FROM jekyll/jekyll:latest
#
# WORKDIR /app
#
# COPY source ./source
# COPY _config.yml .
# COPY Gemfile .
# COPY Gemfile.lock .
#
# # make contents of WORKDIR writable to 'other' aka to jekyll
# RUN chmod -R o+w .
#
# RUN bundle install
#
# CMD ["/bin/bash"]

#gem update --system 3.5.17
#jekyll (4.3.3)
#jekyll-sass-converter (3.0.0)
#jekyll-watch (2.2.1)
#bundler (2.5.17, default: 2.4.19)

