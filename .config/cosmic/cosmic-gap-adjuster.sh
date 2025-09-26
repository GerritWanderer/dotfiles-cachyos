#!/bin/bash

# Cosmic Gap Adjuster Script
# Adjusts window gaps incrementally from 8 to 16 and back to 8
# Run every 5 minutes to increment by 1px

COSMIC_CONFIG_DIR="$HOME/.config/cosmic"
STATE_FILE="/tmp/cosmic-gap-state"
MIN_GAP=8
MAX_GAP=16

# Gap config files to update
GAP_FILES=(
    "$COSMIC_CONFIG_DIR/com.system76.CosmicTheme.Dark/v1/gaps"
    "$COSMIC_CONFIG_DIR/com.system76.CosmicTheme.Light/v1/gaps"
    "$COSMIC_CONFIG_DIR/com.system76.CosmicTheme.Dark.Builder/v1/gaps"
    "$COSMIC_CONFIG_DIR/com.system76.CosmicTheme.Light.Builder/v1/gaps"
)

# Read current state or initialize
if [[ -f "$STATE_FILE" ]]; then
    read -r current_gap direction < "$STATE_FILE"
else
    current_gap=$MIN_GAP
    direction="up"
fi

# Calculate next gap value
if [[ "$direction" == "up" ]]; then
    if [[ $current_gap -ge $MAX_GAP ]]; then
        next_gap=$((current_gap - 1))
        next_direction="down"
    else
        next_gap=$((current_gap + 1))
        next_direction="up"
    fi
else
    if [[ $current_gap -le $MIN_GAP ]]; then
        next_gap=$((current_gap + 1))
        next_direction="up"
    else
        next_gap=$((current_gap - 1))
        next_direction="down"
    fi
fi

# Update gap files
for gap_file in "${GAP_FILES[@]}"; do
    if [[ -f "$gap_file" ]]; then
        echo "(0, $next_gap)" > "$gap_file"
        echo "Updated $gap_file to gap: $next_gap"
    else
        echo "Warning: $gap_file not found"
    fi
done

# Save new state
echo "$next_gap $next_direction" > "$STATE_FILE"

echo "Gap adjusted from $current_gap to $next_gap (direction: $next_direction)"

# Restart cosmic to apply changes (optional - you might want to comment this out if it's too disruptive)
# systemctl --user restart cosmic-session