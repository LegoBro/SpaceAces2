## StarGazer (Sniper) Main Tick:

# Primary: Novapunch

execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function class:4/sniper/primary/tick
execute if score @s reload matches 1.. run function class:4/sniper/primary/reloading
execute unless score @s reload matches 1.. if score @s shoot matches 1.. run function class:4/sniper/primary/use


# 1st Ability: Starpiercer
execute if score @s ability.1.cooldown matches ..0 run function class:4/sniper/starpiercer/ready
execute if score @s ability.1.cooldown matches 1.. run function class:4/sniper/starpiercer/cooldown
function class:4/helper/actionbar/generic/secondary_empty

# 2nd Ability: Vis Mine
execute if score @s ability.2.cooldown matches ..0 run function class:4/sniper/vis_mine/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/sniper/vis_mine/cooldown

# Boot Launch
execute unless entity @s[tag=input.sneak] run item replace entity @s hotbar.3 with minecraft:gray_dye[minecraft:item_model="class/sniper/exo_boots",minecraft:item_name={color:"white",translate:"class.sniper.exo_boots"},minecraft:lore=[{color:"white","italic":false,translate:"class.sniper.exo_boots.lore.1"},{color:"white",translate:"class.sniper.exo_boots.lore.2"}],minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
execute if entity @s[tag=input.sneak] unless score @s ability.1.cooldown matches ..-1 run function class:4/sniper/jump/charge
execute if entity @s[tag=input.sneak.stop] run function class:4/sniper/jump/reset
execute if entity @s[tag=input.jump] run function class:4/sniper/jump/reset

# Ultimate Ability: ???
execute if score @s ultimate_charge >= class.sniper.ultimate.charge Numbers run function class:4/sniper/lights_reach/ready
execute unless score @s ultimate_charge >= class.sniper.ultimate.charge Numbers run function class:4/sniper/lights_reach/cooldown

execute unless score @s SelectedItem matches 1 unless score @s melee.cooldown matches 1.. if entity @s[tag=input.swap_hands] run function class:4/helper/punch

return 1