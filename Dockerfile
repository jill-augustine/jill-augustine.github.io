ARG RUBY_VERSION=3.2.5

FROM ruby:${RUBY_VERSION}-slim-bullseye
ARG JEKYLL_VERSION=4.3.3
ARG BUNDLER_VERSION=2.5.17

# need make (gcc -v, g++ -v, make -v)
RUN <<EOF
apt-get update
apt-get install -y gcc g++ make ruby-full build-essential
EOF


RUN useradd -m --home-dir /jekyll --gid 0 --shell /bin/bash jekyll
RUN chmod 777 /jekyll


USER jekyll
WORKDIR /jekyll

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
ENV HOME="/jekyll"
RUN gem install jekyll:${JEKYLL_VERSION} bundler:${BUNDLER_VERSION}
COPY --chown=jekyll:jekyll --chmod=774 Gemfile Gemfile.lock _config.yml /jekyll/
COPY --chown=jekyll:jekyll --chmod=774 src /jekyll/src

RUN bundle install

CMD ["/bin/bash", "-c", "echo $PWD && ls -al && bundle install && bundle exec jekyll build"]

