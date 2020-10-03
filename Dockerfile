# Use an official Elixir runtime as a parent image
FROM elixir:1.10.3

RUN apt-get update && \
  apt-get install -y postgresql-client

RUN mkdir /app
COPY . /app
WORKDIR /app

RUN chmod +x /app/build.sh

# Install hex package manager
RUN mix local.rebar --force && \
        mix local.hex --force

RUN /app/build.sh

CMD ["/app/_build/prod/rel/app_3/bin/app", "start"]