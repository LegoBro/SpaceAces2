item replace entity @s[gamemode=!spectator,tag=!invis,scores={crouching=0}] armor.head with minecraft:leather_helmet[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:movement_speed",id:"minecraft:d03be21c-51f4-4994-a5f7-56260febbd16",operation:"add_multiplied_total",amount:0.1d}]},minecraft:dyed_color={rgb:0},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
item replace entity @s[tag=!invis,scores={crouching=1..}] armor.head with minecraft:leather_helmet[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:movement_speed",id:"minecraft:d03be21c-51f4-4994-a5f7-56260febbd16",operation:"add_multiplied_total",amount:-1.0d}]},minecraft:dyed_color={rgb:0},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]

execute if entity @s[scores={activate_second=0}] run item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=11030001,minecraft:custom_name='{"color":"white","translate":"vis_mine"}',minecraft:lore=['{"color":"white","translate":"vis_mine_lore1"}','{"color":"white","translate":"vis_mine_lore2"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
execute if entity @s[scores={activate_second=1..}] run item replace entity @s hotbar.1 with minecraft:gray_dye
scoreboard players set @s[scores={rightClick=1..},nbt={SelectedItemSlot:1}] activate_second 100
scoreboard players reset @s[scores={rightClick=1..},nbt={SelectedItemSlot:1}] rightClick
execute if entity @s[scores={activate_second=100}] run function classes:sniper/vis_mine/activate
scoreboard players remove @s[scores={activate_second=1..}] activate_second 1
execute if entity @s[scores={activate_second=40}] run function classes:sniper/vis_mine/deactivate

execute if entity @s[scores={activate_third=0}] run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=11030002,minecraft:custom_name='{"color":"white","translate":"jump"}',minecraft:lore=['{"color":"white","translate":"jump_lore1"}','{"color":"white","translate":"jump_lore2"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
execute if entity @s[scores={activate_third=1..}] run item replace entity @s hotbar.2 with minecraft:gray_dye
scoreboard players set @s[scores={rightClick=1..},nbt={SelectedItemSlot:2}] activate_third 200
scoreboard players reset @s[scores={rightClick=1..},nbt={SelectedItemSlot:2}] rightClick
execute if entity @s[scores={activate_third=200}] run function classes:sniper/jump/activate
scoreboard players remove @s[scores={activate_third=1..}] activate_third 1
execute if entity @s[scores={activate_third=100}] run function classes:sniper/jump/deactivate

# Passive
item replace entity @s hotbar.3 with minecraft:turtle_scute[minecraft:custom_model_data=11030003,minecraft:custom_name='{"color":"white","translate":"distance"}',minecraft:lore=['{"color":"white","translate":"distance_lore1"}','{"color":"white","translate":"distance_lore2"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
function classes:sniper/distance/run

scoreboard players set @s maxHealth 150

item replace entity @s[scores={reload=0,shoot=0}] hotbar.0 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=11030000,minecraft:custom_name='{"translate":"star_sniper"}',minecraft:lore=['{"color":"white","translate":"star_sniper_lore"}','{"color":"white","italic":false,"text":" - damage: 50"}','{"color":"white","italic":false,"text":" - ammo: 6"}','{"color":"white","italic":false,"text":" - reload with speed: 3s"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
item replace entity @s[scores={reload=0,shoot=1..}] hotbar.0 with minecraft:paper[minecraft:custom_model_data=11030000,minecraft:custom_name='{"translate":"star_sniper"}',minecraft:lore=['{"color":"white","translate":"star_sniper_lore"}','{"color":"white","italic":false,"text":" - damage: 50"}','{"color":"white","italic":false,"text":" - ammo: 6"}','{"color":"white","italic":false,"text":" - reload with speed: 3s"}'],minecraft:hide_additional_tooltip={}]
execute if score @s[scores={shoot=0},nbt={SelectedItemSlot:0}] rightClick matches 1.. run scoreboard players set @s shoot 1
execute if score @s[scores={shoot=1},nbt={SelectedItemSlot:0}] rightClick matches 1.. run scoreboard players remove @s totalShots 1
scoreboard players reset @s[nbt={SelectedItemSlot:0}] rightClick
execute if score @s shoot matches 1 run function classes:sniper/shoot
scoreboard players add @s[scores={shoot=1..}] shoot 1
scoreboard players set @s[scores={shoot=15..}] shoot 0
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1
execute if score @s reload matches 1.. run function classes:sniper/reload
scoreboard players set @s[scores={crouching=1..}] crouching 0
return 1