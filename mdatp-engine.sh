#!/bin/bash
log="$HOME/compliance.log"
echo "$(date) | Starting compliance script" >> $log

process="mdapt"
mdengloaded=$(mdatp health --field engine_load_status)
mdenghealthy=$(mdatp health --field healthy)
mdenglicensed=$(mdatp health --field licensed)
mdengorgId=$(mdatp health --field org_id)
mdengrelring=$(mdatp health --field release_ring)

echo -n "{"
  echo -n "$(date) |   + Working on process [$process]..." >> $log
  
   echo -n "\"mdatp-status\": $mdengloaded"

echo "}"
echo "$(date) | Ending compliance script" >> $log
