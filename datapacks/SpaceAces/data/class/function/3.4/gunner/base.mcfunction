item replace entity @s[gamemode=!spectator,tag=!invis,scores={crouching=0}] armor.head with minecraft:leather_helmet[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:movement_speed",id:"minecraft:d03be21c-51f4-4994-a5f7-56260febbd16",operation:"add_multiplied_total",amount:0.0d}]},minecraft:dyed_color={rgb:8462507},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
item replace entity @s[tag=!invis,scores={crouching=1..}] armor.head with minecraft:leather_helmet[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:movement_speed",id:"minecraft:d03be21c-51f4-4994-a5f7-56260febbd16",operation:"add_multiplied_total",amount:-0.1d}]},minecraft:dyed_color={rgb:8462507},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]

execute if entity @s[scores={ability.1.cooldown=0}] run item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick[minecraft:item_model="gunner/1",minecraft:custom_name='{"color":"white","translate":"infinite_ammo"}',minecraft:lore=['{"color":"white","translate":"infinite_ammo_lore1"}','{"color":"white","translate":"infinite_ammo_lore2"}','{"color":"white","translate":"infinite_ammo_lore3"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
execute if entity @s[scores={ability.1.cooldown=1..}] run item replace entity @s hotbar.1 with minecraft:gray_dye
scoreboard players set @s[scores={rightClick=1..},nbt={SelectedItemSlot:1}] ability.1.cooldown 600
scoreboard players reset @s[scores={rightClick=1..},nbt={SelectedItemSlot:1}] rightClick
execute if entity @s[scores={ability.1.cooldown=580..600}] run function class:3.4/gunner/infinite_ammo/activate
scoreboard players remove @s[scores={ability.1.cooldown=1..}] ability.1.cooldown 1
execute if entity @s[scores={ability.1.cooldown=580}] run function class:3.4/gunner/infinite_ammo/deactivate

execute if entity @s[scores={ability.2.cooldown=0}] run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick[minecraft:item_model="gunner/2",minecraft:custom_name='{"color":"white","translate":"large_heal"}',minecraft:lore=['{"color":"white","translate":"large_heal_lore1"}','{"color":"white","translate":"large_heal_lore2"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
execute if entity @s[scores={ability.2.cooldown=1..}] run item replace entity @s hotbar.2 with minecraft:gray_dye
scoreboard players set @s[scores={rightClick=1..},nbt={SelectedItemSlot:2}] ability.2.cooldown 400
scoreboard players reset @s[scores={rightClick=1..},nbt={SelectedItemSlot:2}] rightClick
execute if entity @s[scores={ability.2.cooldown=400}] run function class:3.4/gunner/large_heal/activate
scoreboard players remove @s[scores={ability.2.cooldown=1..}] ability.2.cooldown 1
execute if entity @s[scores={ability.2.cooldown=380}] run function class:3.4/gunner/large_heal/deactivate

# Passive
item replace entity @s hotbar.3 with minecraft:turtle_scute[minecraft:item_model="gunner/3",minecraft:custom_name='{"color":"white","translate":"top"}',minecraft:lore=['{"color":"white","translate":"top_lore1"}','{"color":"white","translate":"top_lore2"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
execute if entity @s[scores={health=350}] run effect give @s minecraft:luck 1 25 true

scoreboard players set @s maxHealth 350

item replace entity @s[scores={reload=0,shoot=0}] hotbar.0 with minecraft:carrot_on_a_stick[minecraft:item_model="gunner/0",minecraft:custom_name='{"translate":"plasma_cannon"}',minecraft:lore=['{"color":"white","translate":"plasma_cannon_lore"}','{"color":"white","italic":false,"text":" - damage: 8"}','{"color":"white","italic":false,"text":" - ammo: 30"}','{"color":"white","italic":false,"text":" - reload with speed: 3.5s"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
item replace entity @s[scores={reload=0,shoot=1..}] hotbar.0 with minecraft:paper[minecraft:item_model="gunner/0",minecraft:custom_name='{"translate":"plasma_cannon"}',minecraft:lore=['{"color":"white","translate":"plasma_cannon_lore"}','{"color":"white","italic":false,"text":" - damage: 8"}','{"color":"white","italic":false,"text":" - ammo: 30"}','{"color":"white","italic":false,"text":" - reload with speed: 3.5s"}'],minecraft:hide_additional_tooltip={}]
execute if score @s[scores={shoot=0},nbt={SelectedItemSlot:0}] rightClick matches 1.. run scoreboard players set @s shoot 1
execute if score @s[scores={shoot=1},nbt={SelectedItemSlot:0}] rightClick matches 1.. run scoreboard players remove @s totalShots 1
scoreboard players reset @s[nbt={SelectedItemSlot:0}] rightClick
execute if score @s shoot matches 1 run function class:3.4/gunner/shoot
scoreboard players add @s[scores={shoot=1..}] shoot 1
scoreboard players set @s[scores={shoot=1..}] shoot 0
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1
execute if score @s reload matches 1.. run function class:3.4/gunner/reload
scoreboard players set @s[scores={crouching=1..}] crouching 0
return 1