## Space Ranger (healer) Main Tick:

# Primary: Vitalis Pistol

execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function class:4/healer/primary/tick
execute if score @s reload matches 1.. run function class:4/healer/primary/reloading
execute unless score @s reload matches 1.. if score @s shoot matches 1.. run function class:4/healer/primary/use


# 1st Ability: Angry Medic???
execute if score @s ability.1.cooldown matches ..0 run function class:4/healer/angry_medic/ready
execute if score @s ability.1.cooldown matches 1.. run function class:4/healer/angry_medic/cooldown

# 2nd Ability: Wrist Rocket
execute if score @s ability.2.cooldown matches ..0 run function class:4/healer/wrist_rocket/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/healer/wrist_rocket/cooldown

# Ultimate Ability: Overheal Machine
execute if score @s ultimate_charge >= class.healer.ultimate.charge Numbers run function class:4/healer/over_heal_machine/ready
execute unless score @s ultimate_charge >= class.healer.ultimate.charge Numbers run function class:4/healer/over_heal_machine/cooldown

## Melee
execute unless score @s melee.cooldown matches 1.. if entity @s[tag=input.swap_hands] run function class:4/helper/punch

item replace entity @s weapon.offhand with emerald[item_model="class/healer/left_arm",item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.head * run item replace entity @s[tag=!invis] armor.head with emerald[item_model="class/healer/head",enchantment_glint_override=false,enchantments={"binding_curse":1},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.legs * run item replace entity @s[tag=!invis] armor.legs with minecraft:leather_leggings[!attribute_modifiers,dyed_color=16745983,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.chest * run item replace entity @s[tag=!invis] armor.chest with minecraft:leather_chestplate[!attribute_modifiers,dyed_color=16745983,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.feet * run item replace entity @s[tag=!invis] armor.feet with minecraft:leather_boots[!attribute_modifiers,dyed_color=16745983,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s weapon.mainhand * run item replace entity @s weapon.mainhand with paper[item_model="class/healer/right_arm",item_name="",tooltip_display={hide_tooltip:true}]
return 1