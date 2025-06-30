#
#   Initialize Flare
#   
#   Purpose: To setup the flare itself
#
#   Input: None
#


scoreboard players remove @s survivalflares.flare_summons 1

execute at @s run function survivalflares:flare/cast_flare

