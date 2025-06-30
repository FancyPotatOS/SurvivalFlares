#
#   Initialize Flare part 2
#   
#   Purpose: To setup the flare itself
#
#   Input: None
#


# Go where facing until find a wall
function survivalflares:flare/step_rec

execute at @s run particle end_rod ~ ~ ~ 0 0 0 0 1 force

# No air found, kill self
execute if entity @s[tag=survivalflares.no_air] run return run kill @s

tag @s remove survivalflares.in_flight
tag @s remove survivalflares.new

execute at @s if entity @e[type=minecraft:marker,tag=survivalflares.flare,distance=..2] run return run function survivalflares:flare/retry_flare

# Set the current block as light block
execute at @s run fill ~ ~ ~ ~ ~ ~ light[level=15] replace #survivalflares:air_like strict

execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["survivalflares.flare","survivalflares.new"]}

scoreboard players operation @e[type=marker,tag=survivalflares.new] survivalflares.lifetime = max_lifetime survivalflares.lifetime

tag @e[type=marker,tag=survivalflares.new] remove survivalflares.new

kill @s


