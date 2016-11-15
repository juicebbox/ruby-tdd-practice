# This script was found on stackoverflow as an advice how to run 'watch'
# and keep the colors of rspec output.
# It runs a given comand once every 10 seconds
# I use it as './cheapwatch.sh rspec test.rb -r ./factory.rb -c -f doc'
#

#posted on stackoverflow by Kaz
#!/bin/sh

# Not quite your Rolex

while true ; do
  clear
  printf "[%s] Output of %s:\n" "$(date)" "$*"
  # "$@" <- we don't want to do it this way, just this:
  ${SHELL-/bin/sh} -c "$*"
  sleep 10  # genuine Quartz movement
done
