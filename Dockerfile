ARG RUBY_VERSION=3.4.2

FROM ruby:$RUBY_VERSION-bookworm AS development
ENV TZ=UTC
ENV RAILS_ENV="development" \
   BUNDLE_DEPLOYMENT="1" \
   BUNDLE_PATH="/usr/local/bundle"
ARG DOCKER_GID=1000
ARG DOCKER_GROUP=g1
ARG DOCKER_UID=1000
ARG DOCKER_USER=u1
RUN groupadd -g ${DOCKER_GID} ${DOCKER_GROUP}
WORKDIR /ror
COPY Gemfile Gemfile.lock /ror/
RUN bundle install && \
   rm -rf ~/.bundle/ "${BUNDLE_PATH}"/ruby/*/cache "${BUNDLE_PATH}"/ruby/*/bundler/gems/*/.git && \
   bundle exec bootsnap precompile --gemfile
ADD ./ /ror
RUN useradd ${DOCKER_USER} -u ${DOCKER_UID} -g ${DOCKER_GROUP}
RUN chown -R ${DOCKER_USER}:${DOCKER_GROUP} db log storage tmp
USER ${DOCKER_USER}
