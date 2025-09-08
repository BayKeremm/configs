#!/usr/bin/env bash

root=$(df -h / | awk 'NR==2{print $5}')
home=$(df -h /home | awk 'NR==2{print $5}')

echo "   $root    $home "
