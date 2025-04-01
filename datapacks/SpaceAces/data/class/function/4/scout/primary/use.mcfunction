item replace entity @s hotbar.0 with minecraft:paper[minecraft:item_model="class/scout/primary",minecraft:custom_name='{"translate":"surge_pistol"}',minecraft:lore=['{"color":"white","translate":"surge_pistol_lore"}','{"color":"white","italic":false,"text":" - damage: 15"}','{"color":"white","italic":false,"text":" - ammo: 8"}','{"color":"white","italic":false,"text":" - reload with speed: 1s"}'],minecraft:hide_additional_tooltip={}]
scoreboard players add @s[scores={shoot=1..}] shoot 1

execute if score @s shoot > class.scout.primary.firerate Numbers run scoreboard players set @s shoot 0