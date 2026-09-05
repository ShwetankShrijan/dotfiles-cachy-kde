#!/bin/bash

KWIN="org.kde.KWin"
DBUS_PATH="/VirtualDesktopManager"
INTERFACE="org.kde.KWin.VirtualDesktopManager"

current=$(qdbus6 "$KWIN" "$DBUS_PATH" "$INTERFACE.current")
desktops=$(qdbus6 --literal "$KWIN" "$DBUS_PATH" "$INTERFACE.desktops")

output=""

entries=$(echo "$desktops" | sed 's/\], \[Argument:/\n/g')

while IFS= read -r entry; do
  if [[ "$entry" =~ \(uss\)[[:space:]]+([0-9]+),[[:space:]]+\"([^\"]+)\",[[:space:]]+\"([^\"]+)\" ]]; then
    uuid="${BASH_REMATCH[2]}"
    name="${BASH_REMATCH[3]}"

    if [ "$uuid" = "$current" ]; then
      output+="<span background=\"#f5c2e7\" foreground=\"#1e1e2e\">  $name  </span> "
    else
      output+=" $name  "
    fi
  fi
done <<<"$entries"

echo "${output% }"
