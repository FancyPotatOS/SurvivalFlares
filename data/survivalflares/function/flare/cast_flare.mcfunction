#
#   Cast Flare
#   
#   Purpose: To scatter a light entity in a random direction
#
#   Input: None
#


tag @s add survivalflares.caster

# Summon the flare marker
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["survivalflares.flare", "survivalflares.in_flight", "survivalflares.no_air","survivalflares.new"]}

execute as @e[type=minecraft:armor_stand,tag=survivalflares.new] at @s run function survivalflares:flare/initialize_flare

tag @s remove survivalflares.caster

