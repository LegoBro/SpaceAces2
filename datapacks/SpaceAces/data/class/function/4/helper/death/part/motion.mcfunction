# Ticking of 
execute store result entity @s Motion[0] float 0.001 run random value -100..100
execute store result entity @s Motion[1] float 0.001 run random value -100..100
execute store result entity @s Motion[2] float 0.001 run random value -100..100

tag @s remove get_motion