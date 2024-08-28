item replace entity @s[gamemode=!spectator,tag=!invis,scores={crouching=0}] armor.head with minecraft:leather_helmet[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:generic.movement_speed",id:"minecraft:d03be21c-51f4-4994-a5f7-56260febbd16",operation:"add_multiplied_total",amount:0.1d}]},minecraft:dyed_color={rgb:6513507},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
item replace entity @s[tag=!invis,scores={crouching=1..}] armor.head with minecraft:leather_helmet[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:generic.movement_speed",id:"minecraft:d03be21c-51f4-4994-a5f7-56260febbd16",operation:"add_multiplied_total",amount:-0.05d}]},minecraft:dyed_color={rgb:6513507},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]

execute if entity @s[scores={activate_second=0}] run item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=11090001,minecraft:custom_name='{"color":"white","translate":"turret"}',minecraft:lore=['{"color":"white","translate":"turret_lore1"}','{"color":"white","translate":"turret_lore2"}','{"color":"white","translate":"turret_lore3"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
execute if entity @s[scores={activate_second=1..}] run item replace entity @s hotbar.1 with minecraft:gray_dye
scoreboard players set @s[scores={rightClick=1..},nbt={SelectedItemSlot:1}] activate_second 600
scoreboard players reset @s[scores={rightClick=1..},nbt={SelectedItemSlot:1}] rightClick
execute if entity @s[scores={activate_second=600}] run function classes:mechanic/turret/activate
scoreboard players remove @s[scores={activate_second=1..}] activate_second 1
execute if entity @s[scores={activate_second=500}] run function classes:mechanic/turret/deactivate

execute if entity @s[scores={activate_third=0}] run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=11090002,minecraft:custom_name='{"color":"white","translate":"wrench"}',minecraft:lore=['{"color":"white","translate":"wrench_lore1"}','{"color":"white","translate":"wrench_lore2"}','{"color":"white","translate":"wrench_lore3"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
execute if entity @s[scores={activate_third=1..}] run item replace entity @s hotbar.2 with minecraft:gray_dye
scoreboard players set @s[scores={rightClick=1..},nbt={SelectedItemSlot:2}] activate_third 20
scoreboard players reset @s[scores={rightClick=1..},nbt={SelectedItemSlot:2}] rightClick
execute if entity @s[scores={activate_third=20}] run function classes:mechanic/wrench/activate
scoreboard players remove @s[scores={activate_third=1..}] activate_third 1
execute if entity @s[scores={activate_third=5}] run function classes:mechanic/wrench/deactivate

# Passive
item replace entity @s hotbar.3 with minecraft:turtle_scute[minecraft:custom_model_data=11090003,minecraft:custom_name='{"color":"white","translate":"last_resort"}',minecraft:lore=['{"color":"white","translate":"last_resort_lore1"}','{"color":"white","translate":"last_resort_lore2"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
function classes:mechanic/last_resort/run

scoreboard players set @s maxHealth 200

item replace entity @s[scores={reload=0,shoot=0}] hotbar.0 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=11090000,minecraft:custom_name='{"translate":"double_chambered_scattergun"}',minecraft:lore=['{"color":"white","translate":"double_chambered_scattergun_lore"}','{"color":"white","italic":false,"text":" - damage: 8"}','{"color":"white","italic":false,"text":" - ammo: 2"}','{"color":"white","italic":false,"text":" - reload with speed: 2s"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
item replace entity @s[scores={reload=0,shoot=1..}] hotbar.0 with minecraft:paper[minecraft:custom_model_data=11090000,minecraft:custom_name='{"translate":"double_chambered_scattergun"}',minecraft:lore=['{"color":"white","translate":"double_chambered_scattergun_lore"}','{"color":"white","italic":false,"text":" - damage: 8"}','{"color":"white","italic":false,"text":" - ammo: 2"}','{"color":"white","italic":false,"text":" - reload with speed: 2s"}'],minecraft:hide_additional_tooltip={}]
execute if score @s[scores={shoot=0},nbt={SelectedItemSlot:0}] rightClick matches 1.. run scoreboard players set @s shoot 1
execute if score @s[scores={shoot=1},nbt={SelectedItemSlot:0}] rightClick matches 1.. run scoreboard players remove @s totalShots 1
scoreboard players reset @s[nbt={SelectedItemSlot:0}] rightClick
execute if score @s shoot matches 1 run function classes:mechanic/shoot
scoreboard players add @s[scores={shoot=1..}] shoot 1
scoreboard players set @s[scores={shoot=15..}] shoot 0
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1
execute if score @s reload matches 1.. run function classes:mechanic/reload
scoreboard players set @s[scores={crouching=1..}] crouching 0
return 1