# screenshot
grim /tmp/lock.png
# add blur effect to screenshot
convert /tmp/lock.png -blur 2x2 /tmp/lock.png
# insert icon file and output
composite -gravity center ~/.config/swaylock/icon.png /tmp/lock.png /tmp/lock.png
# execute lock with /tmp/lock.png as background
swaylock
