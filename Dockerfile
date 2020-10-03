# Use an official Elixir runtime as a parent image
FROM elixir:1.9

# Create app directory and copy the Elixir projects into it
RUN mkdir /app
COPY . /app
WORKDIR /app

RUN chmod +x /app/entrypoint.sh

# Install hex package manager
RUN mix local.rebar --force && \
        mix local.hex --force

RUN mix deps.get
# Compile the project
RUN mix do compile

CMD ["/app/entrypoint.sh"]