#
#   Retry Flare
#   
#   Purpose: To destroy the flare armor stand and uncount this attempt
#
#   Input: None
#


scoreboard players add @p[tag=survivalflares.caster] survivalflares.flare_summons 1

kill @s

