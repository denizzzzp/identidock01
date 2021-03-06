#!/bin/bash
set -e

if [ "$ENV" = 'DEV' ];
then
    echo "SERVER DEV"
    exec python "identidock.py"
elif [ "$ENV" = 'UNIT' ];
then
    echo "SERTER TEST"
    exec python "tests.py"
else
    echo "SERVER PROD"
    exec uwsgi --http 0.0.0.0:9090 --wsgi-file /app/identidock.py --callable app --stats 0.0.0.0:9191
fi