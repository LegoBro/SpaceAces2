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
item replace entity @s[tag=!invis] hotbar.3 with minecraft:turtle_scute[minecraft:item_model="class/seeker/weak_glow",minecraft:item_name={color:"white",translate:"class.seeker.weak_glow"},minecraft:lore=[{color:"white","italic":false,translate:"class.seeker.weak_glow.lore.1"},{color:"white",translate:"class.seeker.weak_glow.lore.2"}]]
item replace entity @s[tag=invis] hotbar.3 with minecraft:turtle_scute[minecraft:item_model="class/seeker/invis/weak_glow",minecraft:item_name={color:"white",translate:"class.seeker.weak_glow"},minecraft:lore=[{color:"white","italic":false,translate:"class.seeker.weak_glow.lore.1"},{color:"white",translate:"class.seeker.weak_glow.lore.2"}]]
scoreboard players operation #Team Team = @s Team
execute as @e[distance=..15] at @s unless score @s Team = #Team Team run function class:4/seeker/weak_glow_check

# Ultimate Ability: Fast Blast
execute if score @s ultimate_charge >= class.seeker.ultimate.charge Numbers run function class:4/seeker/into_the_void/ready
execute unless score @s ultimate_charge >= class.seeker.ultimate.charge Numbers run function class:4/seeker/into_the_void/cooldown

## Melee
execute unless score @s melee.cooldown matches 1.. if entity @s[tag=input.swap_hands] run function class:4/helper/punch

item replace entity @s[tag=invis] weapon.offhand with emerald[item_model="air",item_name="",tooltip_display={hide_tooltip:true}]
execute unless score @s[tag=!invis] SelectedItem matches 2..4 run item replace entity @s[tag=!invis] weapon.offhand with emerald[item_model="class/seeker/left_arm",item_name="",tooltip_display={hide_tooltip:true}]
execute if score @s[tag=!invis] SelectedItem matches 3 run item replace entity @s weapon.offhand with emerald[item_model="class/seeker/left_arm_weak_glow",item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.head * run item replace entity @s[tag=!invis] armor.head with emerald[item_model="class/seeker/head",enchantment_glint_override=false,enchantments={"binding_curse":1},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.legs * run item replace entity @s[tag=!invis] armor.legs with minecraft:leather_leggings[!attribute_modifiers,dyed_color=10360595,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.chest * run item replace entity @s[tag=!invis] armor.chest with minecraft:leather_chestplate[!attribute_modifiers,dyed_color=10360595,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.feet * run item replace entity @s[tag=!invis] armor.feet with minecraft:leather_boots[!attribute_modifiers,dyed_color=10360595,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s weapon.mainhand * run item replace entity @s[tag=!invis] weapon.mainhand with paper[item_model="class/seeker/right_arm",item_name="",tooltip_display={hide_tooltip:true}]
execute if items entity @s weapon.mainhand paper run item replace entity @s[tag=invis] weapon.mainhand with air
return 1