#!/usr/bin/bash

# finds bluez_card name in pacmd card list
BLUEZCARD='pacmd list-cards | egrep -o "bluez_card.*[^>]"'

# switches device profile back and forth, to re-init device.
# often fixes the issue of the headset not playing audio after connection.
pacmd set-card-profile $BLUEZCARD a2dp_sink
pacmd set-card-profile $BLUEZCARD headset_head_unit
pacmd set-card-profile $BLUEZCARD a2dp_sink

# bluez_card.5C_EB_68_75_BB_9
