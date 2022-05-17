#!/bin/bash
# Airpods.sh
# Output connected Airpods battery levels via CLI

sys_profile=$(system_profiler SPBluetoothDataType 2>/dev/null)
case=$(awk '/Case Battery Level/{print $4}'<<<"${sys_profile}")
left=$(awk '/Left Battery Level/{print $4}'<<<"${sys_profile}")
right=$(awk '/Right Battery Level/{print $4}'<<<"${sys_profile}")

if  [[ -n ${case} || ${left} || ${right} ]]; then
  echo "🅒:${case} 🅛:${left} 🅡:${right}"
fi

