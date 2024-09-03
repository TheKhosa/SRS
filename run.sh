#!/bin/bash

# Get the hostname
HOSTNAME=$(hostname)

# Define the path to your Caddyfile
CADDYFILE="Caddyfile"

# Write the Caddyfile configuration
cat <<EOF > "$CADDYFILE"
$HOSTNAME {
    reverse_proxy srs:1985
}
EOF
echo "Caddyfile has been generated with hostname '$HOSTNAME' at $CADDYFILE"
