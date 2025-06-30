#
#   Step Recursive
#   
#   Purpose: To step slightly until found a non-air block
#
#   Input: None
#


execute if block ~ ~ ~ #survivalflares:air_like run tag @s remove survivalflares.no_air

tp ^ ^ ^0.5

execute unless block ~ ~ ~ #survivalflares:air_like run return run tp ^ ^ ^-0.5

execute at @s run function survivalflares:flare/step_rec

