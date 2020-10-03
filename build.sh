#!/usr/bin/env bash
# exit on error
set -o errexit

# Initial setup
mix deps.get --only prod
MIX_ENV=prod mix compile

# Build the release and overwrite the existing release directory
MIX_ENV=prod mix release --overwrite

# SECRET_KEY_BASE=`mix phx.gen.secret` _build/prod/rel/settings/bin/settings start