#!/bin/bash

# List of users to create
users=(
    camille_jenatzy gaston_chasseloup leon_serpollet william_vanderbilt
    henri_fournier maurice_augieres arthur_duray henry_ford
    louis_rigolly pierre_caters paul_baras victor_hemery
    fred_marriott lydston_hornsted kenelm_guinness rene_thomas
    ernest_eldridge malcolm_campbell ray_keech john_cobb
    dorothy_levitt paula_murphy betty_skelton rachel_kushner
    kitty_oneil jessi_combs andy_green
)

# Loop through the list and create each user
for user in "${users[@]}"; do
    sudo useradd -m -s /bin/bash "$user"
    echo "User $user created."
done
