#
#   Randomly Rotate
#   
#   Purpose: To randomly rotate the current entity
#
#   Input: None
#


execute store result entity @s Rotation[0] float 1 run random value -180..180
execute store result entity @s Rotation[1] float 1 run random value -65..22

