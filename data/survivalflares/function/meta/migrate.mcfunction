
# Ensure the master scoreboard exists
scoreboard objectives add survivalflares.master dummy

# Apply migration if required
execute unless score version survivalflares.master matches 1.. run function survivalflares:meta/migrations/latest_version
