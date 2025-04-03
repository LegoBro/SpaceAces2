## Vis Mine
item replace entity @s hotbar.1 with minecraft:spyglass[minecraft:item_model="class/sniper/starpiercer",minecraft:item_name='{"color":"white","translate":"starpiercer"}',minecraft:lore=['{"color":"white","italic":false,"translate":"vis_mine_lore1"}','{"color":"white","translate":"vis_mine_lore2"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]

execute if score @s SelectedItem matches 1 if entity @s[tag=input.right_click] if score @s ability.1.cooldown > class.sniper.1.maxDamage Numbers run scoreboard players operation @s ability.1.cooldown -= class.sniper.1.charge_speed Numbers

execute if score @s SelectedItem matches 1 if score @s ability.1.cooldown matches ..-10 unless entity @s[tag=input.right_click] run function class:4/sniper/starpiercer/shoot
execute unless entity @s[tag=input.right_click] run scoreboard players set @s ability.1.cooldown 0