#
#   Setup Flare
#   
#   Purpose: To scatter light blocks around the player
#
#   Input: None
#


playsound minecraft:entity.blaze.shoot player @a[distance=..30] ~ ~ ~ 0.4 1.9 0.2

scoreboard players operation @s survivalflares.flare_summons = flares_summoned survivalflares.flare_summons

