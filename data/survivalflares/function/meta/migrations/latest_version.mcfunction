#
#   Migration File V1
#   
#   Purpose: To update the datapack up to this level, then apply new/updated configs or setup
#
#   Input: None
#

tellraw @a ["",{"text":"[Survival Flares Datapack]","bold":true,"color":"dark_blue"}," - Setup"]

# Apply last migration
#execute unless score version survivalflares.master matches 1.. run function survivalflares:meta/migrate/migration_v0

# Set the version
scoreboard players set version survivalflares.master 1

scoreboard objectives add survivalflares.lifetime dummy
scoreboard players set max_lifetime survivalflares.lifetime 2400

scoreboard objectives add survivalflares.clock dummy
scoreboard players set max_clock survivalflares.clock 20

scoreboard objectives add survivalflares.flare_summons dummy
scoreboard players set flares_summoned survivalflares.flare_summons 30


return 0
scoreboard objectives add fpconflict.conflict_map dummy
