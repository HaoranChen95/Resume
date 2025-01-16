# The Docker for GitHub pages implementation on-premise

FROM jekyll/jekyll

# VOLUME [ "/docs" ]

# COPY ./docs /docs

# RUN chmod -R 777 /docs

WORKDIR /docs

# RUN pwd && ls -la

RUN gem install github-pages bundler

# RUN jekyll build

EXPOSE 4000

CMD ["jekyll", "serve", "--host", "0.0.0.0", "--port", "4000"]
