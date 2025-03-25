item replace entity @s[gamemode=!spectator,tag=!invis,scores={crouching=0}] armor.head with minecraft:leather_helmet[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:movement_speed",id:"minecraft:d03be21c-51f4-4994-a5f7-56260febbd16",operation:"add_multiplied_total",amount:-0.1d}]},minecraft:dyed_color={rgb:16743705},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
item replace entity @s[tag=!invis,scores={crouching=1..}] armor.head with minecraft:leather_helmet[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:movement_speed",id:"minecraft:d03be21c-51f4-4994-a5f7-56260febbd16",operation:"add_multiplied_total",amount:0.0d}]},minecraft:dyed_color={rgb:16743705},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]

execute if entity @s[scores={ability.1.cooldown=0}] run item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick[minecraft:item_model="brawler/1",minecraft:custom_name='{"color":"white","translate":"sword_throw"}',minecraft:lore=['{"color":"white","translate":"sword_throw_lore1"}','{"color":"white","translate":"sword_throw_lore2"}','{"color":"white","translate":"sword_throw_lore3"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
execute if entity @s[scores={ability.1.cooldown=1..}] run item replace entity @s hotbar.1 with minecraft:gray_dye
scoreboard players set @s[scores={rightClick=1..},nbt={SelectedItemSlot:1}] ability.1.cooldown 100
scoreboard players reset @s[scores={rightClick=1..},nbt={SelectedItemSlot:1}] rightClick
execute if entity @s[scores={ability.1.cooldown=100}] run function classes:brawler/sword_throw/activate
scoreboard players remove @s[scores={ability.1.cooldown=1..}] ability.1.cooldown 1
execute if entity @s[scores={ability.1.cooldown=95}] run function classes:brawler/sword_throw/deactivate

execute if entity @s[scores={ability.2.cooldown=0}] run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick[minecraft:item_model="brawler/2",minecraft:custom_name='{"color":"white","translate":"spin_slash"}',minecraft:lore=['{"color":"white","translate":"spin_slash_lore1"}','{"color":"white","translate":"spin_slash_lore2"}','{"color":"white","translate":"spin_slash_lore3"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
execute if entity @s[scores={ability.2.cooldown=1..}] run item replace entity @s hotbar.2 with minecraft:gray_dye
scoreboard players set @s[scores={rightClick=1..},nbt={SelectedItemSlot:2}] ability.2.cooldown 400
scoreboard players reset @s[scores={rightClick=1..},nbt={SelectedItemSlot:2}] rightClick
execute if entity @s[scores={ability.2.cooldown=389..400}] run function classes:brawler/spin_slash/activate
scoreboard players remove @s[scores={ability.2.cooldown=1..}] ability.2.cooldown 1
execute if entity @s[scores={ability.2.cooldown=389}] run function classes:brawler/spin_slash/deactivate

# Passive
item replace entity @s hotbar.3 with minecraft:turtle_scute[minecraft:item_model="brawler/3",minecraft:custom_name='{"color":"white","translate":"final_stance"}',minecraft:lore=['{"color":"white","translate":"final_stance_lore1"}','{"color":"white","translate":"final_stance_lore2"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
function classes:brawler/position/run

scoreboard players set @s maxHealth 250

item replace entity @s[scores={reload=0,shoot=0}] hotbar.0 with minecraft:carrot_on_a_stick[minecraft:item_model="brawler/0",minecraft:custom_name='{"translate":"plasma_sword"}',minecraft:lore=['{"color":"white","translate":"plasma_sword_lore"}','{"color":"white","italic":false,"text":" - damage: 35"}','{"color":"white","italic":false,"text":" - ammo: 12"}','{"color":"white","italic":false,"text":" - reload with speed: 2s"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
item replace entity @s[scores={reload=0,shoot=1..}] hotbar.0 with minecraft:paper[minecraft:item_model="brawler/0",minecraft:custom_name='{"translate":"plasma_sword"}',minecraft:lore=['{"color":"white","translate":"plasma_sword_lore"}','{"color":"white","italic":false,"text":" - damage: 35"}','{"color":"white","italic":false,"text":" - ammo: 12"}','{"color":"white","italic":false,"text":" - reload speed: 2s"}'],minecraft:hide_additional_tooltip={}]
execute if score @s[scores={shoot=0},nbt={SelectedItemSlot:0}] rightClick matches 1.. run scoreboard players set @s shoot 1
execute if score @s[scores={shoot=1},nbt={SelectedItemSlot:0}] rightClick matches 1.. run scoreboard players remove @s totalShots 1
scoreboard players reset @s[nbt={SelectedItemSlot:0}] rightClick
execute if score @s shoot matches 1 run function classes:brawler/test_swipe
scoreboard players add @s[scores={shoot=1..}] shoot 1
scoreboard players set @s[scores={shoot=10..}] shoot 0
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1
execute if score @s reload matches 1.. run function classes:brawler/reload
scoreboard players set @s[scores={crouching=1..}] crouching 0

return 1