#
#   Tick Flare
#   
#   Purpose: To update the current flare
#
#   Input: None
#


execute unless block ~ ~ ~ #survivalflares:air_like run return run function survivalflares:flare/die

scoreboard players remove @s survivalflares.lifetime 1
scoreboard players add @s survivalflares.clock 1

scoreboard players operation temp survivalflares.clock = @s survivalflares.clock
scoreboard players operation temp survivalflares.clock %= max_clock survivalflares.clock

execute if score temp survivalflares.clock matches 0 run function survivalflares:flare/clock

execute if score @s survivalflares.lifetime matches ..0 run return run function survivalflares:flare/die

