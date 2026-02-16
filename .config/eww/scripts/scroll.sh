#!/usr/bin/env bash

while true; do
  # Count up
  for i in $(seq 0 0.5 100); do
    echo "$i"
    sleep 0.02   # adjust speed of printing here
  done

  sleep 2  # pause at the top

  # Count down
  for i in $(seq 100 -0.5 0); do
    echo "$i"
    sleep 0.02
  done

  sleep 2  # pause at the bottom
done
