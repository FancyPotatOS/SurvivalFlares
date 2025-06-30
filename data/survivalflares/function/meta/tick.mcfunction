

execute as @e[type=minecraft:marker,tag=survivalflares.flare] at @s run function survivalflares:flare/tick

execute as @a if score @s survivalflares.flare_summons matches 1.. run function survivalflares:flare/summon_flare

