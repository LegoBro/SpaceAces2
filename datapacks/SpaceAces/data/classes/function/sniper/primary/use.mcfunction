item replace entity @s hotbar.0 with minecraft:paper[minecraft:item_model="sniper/0",minecraft:custom_name='{"translate":"star_sniper"}',minecraft:lore=['{"color":"white","translate":"star_sniper_lore"}','{"color":"white","italic":false,"text":" - damage: 50"}','{"color":"white","italic":false,"text":" - ammo: 6"}','{"color":"white","italic":false,"text":" - reload with speed: 3s"}'],minecraft:hide_additional_tooltip={}]
scoreboard players add @s[scores={shoot=1..}] shoot 1

execute if score @s shoot > class.sniper.primary.firerate Numbers run scoreboard players set @s shoot 0