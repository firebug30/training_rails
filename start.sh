echo "Check the rails process."
if [ -e /usr/src/app/tmp/pids/server.pid ]; then
  rm -r /usr/src/app/tmp/pids/server.pid
fi

echo "Start a rails server."
bundle exec rails s -p 3000 -b '0.0.0.0'