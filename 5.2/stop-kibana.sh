#!/bin/bash
pids=$(ps | grep "kibana" | grep -v "grep" | awk '{print $1}');
echo "Killing kibana processess with Process IDs: ${pids}"
kill -KILL ${pids}