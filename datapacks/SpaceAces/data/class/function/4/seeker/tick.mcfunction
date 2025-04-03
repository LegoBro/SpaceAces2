## Void Stalker (seeker) Main Tick:

# Primary: Surge Rifle

execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function class:4/seeker/primary/tick
execute if score @s reload matches 1.. run function class:4/seeker/primary/reloading
execute unless score @s reload matches 1.. if score @s shoot matches 1.. run function class:4/seeker/primary/use


# 1st Ability: Poison Jab
execute if score @s ability.1.cooldown matches ..0 run function class:4/seeker/poison_jab/ready
execute if score @s ability.1.cooldown matches 1.. run function class:4/seeker/poison_jab/cooldown

# 2nd Ability: Swift Shade
execute if score @s ability.2.cooldown matches ..0 run function class:4/seeker/swift_shade/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/seeker/swift_shade/cooldown

# Passive Weak Glow:
item replace entity @s hotbar.3 with minecraft:turtle_scute[minecraft:item_model="class/seeker/weak_glow",minecraft:item_name='{"color":"white","translate":"weak_glow"}',minecraft:lore=['{"color":"white","italic":false,"translate":"weak_glow_lore1"}','{"color":"white","translate":"weak_glow_lore2"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
scoreboard players operation #Team Team = @s Team
execute as @e[distance=..15] at @s unless score @s Team = #Team Team run function class:4/seeker/weak_glow_check

return 1