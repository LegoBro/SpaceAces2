## Space Ranger (soldier) Main Tick:

# Primary: Surge Rifle

execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function class:4/soldier/primary/tick
execute if score @s reload matches 1.. run function class:4/soldier/primary/reloading
execute unless score @s reload matches 1.. if score @s shoot matches 1.. run function class:4/soldier/primary/use


# 1st Ability: Plasma Grenade
execute if score @s ability.1.cooldown matches ..0 run function class:4/soldier/plasma_grenade/ready
execute if score @s ability.1.cooldown matches 1.. run function class:4/soldier/plasma_grenade/cooldown

# 2nd Ability: Burst Heal
execute if score @s ability.2.cooldown matches ..0 run function class:4/soldier/burst_heal/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/soldier/burst_heal/cooldown

# Ultimate Ability: Fast Blast
execute if score @s ultimate_charge >= class.soldier.ultimate.charge Numbers run function class:4/soldier/fast_blast/ready
execute unless score @s ultimate_charge >= class.soldier.ultimate.charge Numbers run function class:4/soldier/fast_blast/cooldown

execute unless score @s melee.cooldown matches 1.. if entity @s[tag=input.swap_hands] run function class:4/helper/punch

execute unless score @s SelectedItem matches 2 run item replace entity @s weapon.offhand with emerald[item_model="class/soldier/left_arm",item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.head * run item replace entity @s[tag=!invis] armor.head with emerald[item_model="class/soldier/head",enchantment_glint_override=false,enchantments={"binding_curse":1},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.legs * run item replace entity @s[tag=!invis] armor.legs with minecraft:leather_leggings[!attribute_modifiers,dyed_color=2838726,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.chest * run item replace entity @s[tag=!invis] armor.chest with minecraft:leather_chestplate[!attribute_modifiers,dyed_color=2838726,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.feet * run item replace entity @s[tag=!invis] armor.feet with minecraft:leather_boots[!attribute_modifiers,dyed_color=2838726,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s weapon.mainhand * run item replace entity @s weapon.mainhand with paper[item_model="class/soldier/right_arm",item_name="",tooltip_display={hide_tooltip:true}]
return 1