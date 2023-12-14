#!/bin/bash
# Entrypoint Script referenced in the Dockerfile

set -e
# 2- Run the Shiny App
cd app
R -e "shiny::runApp(host= '0.0.0.0', port= 3838)"
exec "$@"
