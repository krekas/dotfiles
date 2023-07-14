#!/bin/sh

updates=$(dnf updateinfo -q --list | wc -l)

if [ "$updates" -gt 0 ]; then
    updates = updates
else
    updates = 0
fi

echo "{\"text\": \"$updates\", \"tooltip\": \"$updates Updates Available\"}"
