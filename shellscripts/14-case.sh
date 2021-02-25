#!/bin/bash

starting () {
	for i in {1..5}
	do
		printf "$i."
		sleep 1
	done
	echo started
}

stopping () {
	for d in {5..1}
	do
		printf "$d."
		sleep 1
	done
	echo stopped
}

action=$1

case $action in

  start | START)
    starting
    ;;

  stop | STOP)
    stopping
    ;;

  restart | RESTART)
    stopping
    starting
    ;;

  *)
    echo -n "usage: start|START|stop|STOP|restart|RESTART"
    echo
    ;;
esac
