## If player is on red team
# Join red
tp @s[x=10,y=195,z=8,dx=2,dy=3,dz=2,team=red] 10 195 -1 -90 0

# Check if armor is equipped
execute unless predicate health:boots run function health:update_armor_red

# Particles for temmates
execute if score @s energy matches ..9 run particle minecraft:block{block_state:{Name:"minecraft:yellow_concrete_powder"}} ~ ~1 ~ 0.1 0.1 0.1 0 5 force @a[distance=.5..,team=red]

execute if score @s displayHealth matches ..2 run particle minecraft:block{block_state:{Name:"minecraft:lapis_block"}} ~ ~1 ~ 0.1 0.1 0.1 0 5 force @a[distance=.5..,team=red]

return 1