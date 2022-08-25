#!/bin/bash

read -r -p "Enter filename: " filename

echo "An old silent pond...
A frog jumps into the pond,
splash! Silence again.

Autumn moonlight-
a worm digs silently
into the chestnut.

In the twilight rain
these brilliant-hued hibiscus -
A lovely sunset." | cat >> $filename

cat $filename 1>/dev/null 2>stderr

