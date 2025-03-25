## Pathfinder (Scout) Main Tick:

# Primary: Surge Pistol

execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function classes:scout/primary/tick
execute if score @s reload matches 1.. run function classes:scout/primary/reload
execute if score @s shoot matches 1.. run function classes:scout/primary/use


# 1st Ability: Dodge
execute if score @s activate_second matches ..0 run function classes:scout/boost/ready
execute if score @s activate_second matches 1.. run function classes:scout/boost/cooldown


# Passive: Double Jump
#item replace entity @s hotbar.3 with minecraft:turtle_scute[minecraft:item_model="scout/3",minecraft:custom_name='{"color":"white","translate":"adrenaline"}',minecraft:lore=['{"color":"white","translate":"adrenaline_lore1"}','{"color":"white","translate":"adrenaline_lore2"}','{"color":"white","translate":"adrenaline_lore3"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
execute if entity @s[tag=input.jump.start,tag=!double_jump] unless predicate input:on_ground run function classes:scout/double_jump
execute if entity @s[tag=double_jump] if predicate input:on_ground run tag @s remove double_jump
effect give @s jump_boost 1 1 true

return 1