## Pathfinder (Scout) Main Tick:

# Primary: Surge Pistol
item replace entity @s[scores={reload=0,shoot=0}] hotbar.0 with minecraft:carrot_on_a_stick[minecraft:item_model="scout/0",minecraft:custom_name='{"translate":"surge_pistol"}',minecraft:lore=['{"color":"white","translate":"surge_pistol_lore"}','{"color":"white","italic":false,"text":" - damage: 15"}','{"color":"white","italic":false,"text":" - ammo: 8"}','{"color":"white","italic":false,"text":" - reload with speed: 1s"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
item replace entity @s[scores={reload=0,shoot=1..}] hotbar.0 with minecraft:paper[minecraft:item_model="scout/0",minecraft:custom_name='{"translate":"surge_pistol"}',minecraft:lore=['{"color":"white","translate":"surge_pistol_lore"}','{"color":"white","italic":false,"text":" - damage: 15"}','{"color":"white","italic":false,"text":" - ammo: 8"}','{"color":"white","italic":false,"text":" - reload with speed: 1s"}'],minecraft:hide_additional_tooltip={}]
execute if score @s[scores={shoot=0},nbt={SelectedItemSlot:0}] rightClick matches 1.. run scoreboard players set @s shoot 1
execute if score @s[scores={shoot=1},nbt={SelectedItemSlot:0}] rightClick matches 1.. run scoreboard players remove @s totalShots 1
scoreboard players reset @s[nbt={SelectedItemSlot:0}] rightClick
execute if score @s shoot matches 1 run function classes:scout/shoot
scoreboard players add @s[scores={shoot=1..}] shoot 1
scoreboard players set @s[scores={shoot=3..}] shoot 0
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1
execute if score @s reload matches 1.. run function classes:scout/reload

# 1st Ability: Dodge
execute if score @s activate_second matches ..0 run function classes:scout/boost/ready
execute if score @s activate_second matches 1.. run function classes:scout/boost/cooldown


# Passive: Double Jump
#item replace entity @s hotbar.3 with minecraft:turtle_scute[minecraft:item_model="scout/3",minecraft:custom_name='{"color":"white","translate":"adrenaline"}',minecraft:lore=['{"color":"white","translate":"adrenaline_lore1"}','{"color":"white","translate":"adrenaline_lore2"}','{"color":"white","translate":"adrenaline_lore3"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
execute if entity @s[tag=jump,tag=!double_jump] run function classes:scout/double_jump
execute if entity @s[tag=double_jump] if predicate input:on_ground run tag @s remove double_jump

return 1