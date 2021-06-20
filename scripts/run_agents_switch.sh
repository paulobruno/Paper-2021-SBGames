#!/bin/bash

case="1_switch"

# basic x flat
pair="basic_flat"
initials="bf"

agent=("basic" "flat")
combination=("c" "cf" "cfm" "cm" "f" "fm" "fmw" "fw" "m" "mw" "mwc" "w" "wc" "wcf")

for comb in ${combination[@]}; do
    for ag in ${agent[@]}; do
        echo "python3 scripts/run_agent.py agents/$ag scenarios/$case/$pair/$initials"_"$comb.cfg -n 200 -d -log logs/$case/$initials"_"$comb"_"$ag.log"
        echo "Done! $pair $comb $ag"
    done
done

# basic x animated
pair="basic_animated"
initials="ba"

agent=("basic" "animated")
combination=("c" "cf" "f" "fw" "w" "wc")

for comb in ${combination[@]}; do
    for ag in ${agent[@]}; do
        echo "python3 scripts/run_agent.py agents/$ag scenarios/$case/$pair/$initials"_"$comb.cfg -n 200 -d -log logs/$case/$initials"_"$comb"_"$ag.log"
        echo "Done! $pair $comb $ag"
    done
done

