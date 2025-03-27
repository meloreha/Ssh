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
    # Create user with a home directory and bash shell
    sudo useradd -m -s /bin/bash "$user"
    
    # Generate a random password
    password=$(openssl rand -base64 12)

    # Set the password for the user
    echo "$user:$password" | sudo chpasswd

    # Force password change on first login (optional)
    sudo chage -d 0 "$user"

    # Output the generated password (for logging purposes)
    echo "User $user created with password: $password"
done
