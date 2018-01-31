#!/bin/bash

PPATH=$(realpath ..)
. ../../testdata_tools/gen.sh

setup_dirs
use_solution validator.cpp
compile gen.cpp

samplegroup
for x in {1..8}
do
    sample $x
done

group small 34
tc filled-01 gen 10 filled 
tc filled-02 gen 10 filled 
tc filled-03 gen 100 filled 
tc filled-04 gen 100 filled 
tc filled-05 gen 1000 filled 
tc filled-06 gen 1000 filled 

tc filled2-01 gen 10 filled2 
tc filled2-02 gen 10 filled2 
tc filled2-03 gen 100 filled2 
tc filled2-04 gen 100 filled2 
tc filled2-05 gen 1000 filled2 
tc filled2-06 gen 1000 filled2

tc okholes-01 gen 10 okholes 
tc okholes-02 gen 10 okholes 
tc okholes-03 gen 100 okholes 
tc okholes-04 gen 100 okholes 
tc okholes-05 gen 1000 okholes 
tc okholes-06 gen 1000 okholes

tc splithole-01 gen 10 splithole 
tc splithole-02 gen 10 splithole 
tc splithole-03 gen 100 splithole 
tc splithole-04 gen 100 splithole 
tc splithole-05 gen 1000 splithole 
tc splithole-06 gen 1000 splithole

tc doublehole-01 gen 10 doublehole 
tc doublehole-02 gen 10 doublehole 
tc doublehole-03 gen 100 doublehole 
tc doublehole-04 gen 100 doublehole 
tc doublehole-05 gen 1000 doublehole 
tc doublehole-06 gen 1000 doublehole

tc pyramid-01 gen 1000 pyramid
tc pyramid2-01 gen 1000 pyramid2

group large-nodouble 31
tc filled-01
tc filled-02
tc filled-03
tc filled-04
tc filled-05
tc filled-06

tc filled2-01
tc filled2-02
tc filled2-03
tc filled2-04
tc filled2-05
tc filled2-06

tc okholes-01
tc okholes-02
tc okholes-03
tc okholes-04
tc okholes-05
tc okholes-06

tc splithole-01
tc splithole-02
tc splithole-03
tc splithole-04
tc splithole-05
tc splithole-06

tc filled-07 gen 10000 filled 
tc filled-08 gen 10000 filled 
tc filled-09 gen 100000 filled 
tc filled-10 gen 100000 filled 

tc filled2-07 gen 10000 filled2 
tc filled2-08 gen 10000 filled2 
tc filled2-09 gen 100000 filled2 
tc filled2-10 gen 100000 filled2 

tc okholes-07 gen 10000 okholes 
tc okholes-08 gen 10000 okholes 
tc okholes-09 gen 100000 okholes 
tc okholes-10 gen 100000 okholes 

tc splithole-07 gen 10000 splithole
tc splithole-08 gen 10000 splithole 
tc splithole-09 gen 100000 splithole
tc splithole-10 gen 100000 splithole 

group large 35
include_group small
include_group large-nodouble
tc doublehole-07 gen 10000 doublehole
tc doublehole-08 gen 10000 doublehole 
tc doublehole-09 gen 100000 doublehole
tc doublehole-10 gen 100000 doublehole 

tc pyramid-02 gen 100000 pyramid
tc pyramid2-02 gen 100000 pyramid2


cleanup_programs
