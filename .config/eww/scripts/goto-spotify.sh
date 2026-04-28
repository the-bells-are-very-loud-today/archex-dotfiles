chmod 660 /dev/tty
pgrep ncspot > /dev/null 2>&1 && killall ncspot || kitty "ncspot"
