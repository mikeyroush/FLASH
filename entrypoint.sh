#!/bin/bash
set -e

rm -f /myapp/tmp/pids/server.pid
rails db:migrate
rails db:seed
rails ts:routes

exec "rails" "server" "$@"
