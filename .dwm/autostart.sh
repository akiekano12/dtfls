#!/bin/sh

pgrep sxhkd | xargs kill
feh --bg-scale ~/.dwm/img/towa.jpg &
sleep 2 &
sxhkd &
xsetroot -name " "
