#!/bin/bash

case="2_blend"
combination=("25" "50_1" "50_2" "75" "w" "wc")

# basic x caco
pair="basic_caco"
initials="bc"
agent=("basic" "caco")

for comb in ${combination[@]}; do
    for ag in ${agent[@]}; do
        echo "python3 scripts/run_agent.py agents/$ag scenarios/$case/$pair/$initials"_"$comb.cfg -n 200 -d -log logs/$case/$initials"_"$comb"_"$ag.log"
    done
done

# basic x flat
pair="basic_flat"
initials="bf"
agent=("basic" "flat")

for comb in ${combination[@]}; do
    for ag in ${agent[@]}; do
        echo "python3 scripts/run_agent.py agents/$ag scenarios/$case/$pair/$initials"_"$comb.cfg -n 200 -d -log logs/$case/$initials"_"$comb"_"$ag.log"
    done
done

# basic x animated
pair="basic_animated"
initials="ba"
agent=("basic" "animated")

for comb in ${combination[@]}; do
    for ag in ${agent[@]}; do
        echo "python3 scripts/run_agent.py agents/$ag scenarios/$case/$pair/$initials"_"$comb.cfg -n 200 -d -log logs/$case/$initials"_"$comb"_"$ag.log"
    done
done

