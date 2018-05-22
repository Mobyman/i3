#!/bin/sh

pkill polybar

sleep 1;

polybar -l info i3wmthemer_bar &
