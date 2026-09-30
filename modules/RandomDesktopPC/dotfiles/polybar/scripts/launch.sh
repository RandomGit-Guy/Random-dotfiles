#!/usr/bin/env bash

pkill polybar

polybar bar -c "$HOME/.config/polybar/config.ini" & disown
