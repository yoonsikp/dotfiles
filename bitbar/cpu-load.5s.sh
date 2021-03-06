#!/usr/bin/env bash

# <bitbar.title>CPU Load</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Paul W. Rankin</bitbar.author>
# <bitbar.author.github>rnkn</bitbar.author.github>
# <bitbar.desc>Shows CPU load as a percentage (without using top).</bitbar.desc>
# <bitbar.image>http://photos.paulwrankin.com/screenshots/cpu-load.png</bitbar.image>
# <bitbar.dependencies>bash</bitbar.dependencies>

# BitBar CPU Load plugin

ncpu=$(sysctl -n hw.logicalcpu)
total=$(ps -Ao %cpu= | paste -sd+ - | bc)
usage=$(echo "scale = 2; $total / $ncpu" | bc)

printf "C: %00.1f%%\n" "$usage"
echo "---"
echo "Refresh | refresh=true"
