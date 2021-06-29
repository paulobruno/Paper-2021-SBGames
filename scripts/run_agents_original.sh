#!/bin/bash

case="0_original"

RunAgent() {
    ag=$1; sc=$2
    python3 scripts/run_agent.py agents/$ag scenarios/$case/$sc/$sc.cfg -n 200 -d -log logs/$case/$sc"_"$ag.log
    echo "Done! $pair $sc $ag"
}

scenario=("caco" "flat" "animated")

RunAgent "basic" "basic"

for s in ${scenario[@]}; do
    RunAgent "$s" "$s"
    RunAgent "basic" "$s"
    RunAgent "$s" "basic"
done
