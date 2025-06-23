## StarGazer (Sniper) Main Tick:

# Primary: Novapunch

execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function class:4/sniper/primary/tick
execute if score @s reload matches 1.. run function class:4/sniper/primary/reloading
execute unless score @s reload matches 1.. if score @s shoot matches 1.. run function class:4/sniper/primary/use


# 1st Ability: Starpiercer
execute if score @s ability.1.cooldown matches ..0 run function class:4/sniper/starpiercer/ready
execute if score @s ability.1.cooldown matches 1.. run function class:4/sniper/starpiercer/cooldown

# 2nd Ability: Vis Mine
execute if score @s ability.2.cooldown matches ..0 run function class:4/sniper/vis_mine/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/sniper/vis_mine/cooldown

# Boot Launch
execute unless entity @s[tag=input.sneak] run item replace entity @s hotbar.3 with minecraft:stone[minecraft:item_model="class/sniper/jump",minecraft:item_name={color:"white",translate:"class.sniper.jump"},minecraft:lore=[{color:"white","italic":false,translate:"class.sniper.jump.lore.1"},{color:"white",translate:"class.sniper.jump.lore.2"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
execute if entity @s[tag=input.sneak] run function class:4/sniper/jump/charge
execute if entity @s[tag=input.sneak.stop] run function class:4/sniper/jump/reset
execute if entity @s[tag=input.jump] run function class:4/sniper/jump/reset

return 1