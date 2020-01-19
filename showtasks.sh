#!/usr/bin/env bash

export KODILLA_HOME=/Users/mac/Documents/Developement/tasks/

start_runcrud()
{
  $KODILLA_HOME/runcrud.sh start
  end
}

fail() {
  echo "Error running runcrud.sh script."
}

end() {
  echo "showtasks.sh finished"
}

start_browser(){
open -a Safari http://localhost:8080/crud/v1/task/getTasks
}

if start_runcrud; then
   start_browser
else
   fail
fi