scoreboard players set @s Class 1

scoreboard players operation @s maxHealth = class.scout.health Numbers
effect give @s invisibility infinite 0 true
effect give @s resistance infinite 9 true
scoreboard players operation @s health = class.scout.health Numbers
data modify storage class:speed speed set from storage space_aces:class scout.speed
function class:4/helper/set/speed with storage class:speed
data modify storage class:scale scale set from storage space_aces:class scout.scale
function class:4/helper/set/scale with storage class:scale

# Helmet


#item replace entity @s[gamemode=!spectator,tag=!invis,scores={crouching=0}] armor.head with minecraft:leather_helmet[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:movement_speed",id:"minecraft:d03be21c-51f4-4994-a5f7-56260febbd16",operation:"add_multiplied_total",amount:0.4d}]},minecraft:dyed_color={rgb:6541567},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
#item replace entity @s[tag=!invis,scores={crouching=1..}] armor.head with minecraft:leather_helmet[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:movement_speed",id:"minecraft:d03be21c-51f4-4994-a5f7-56260febbd16",operation:"add_multiplied_total",amount:0.25d}]},minecraft:dyed_color={rgb:6541567},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]

return 1