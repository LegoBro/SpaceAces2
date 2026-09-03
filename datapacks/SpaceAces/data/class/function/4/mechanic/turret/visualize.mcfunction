execute as @n[tag=los_pass] at @s anchored eyes positioned ^ ^ ^ run summon area_effect_cloud ~ ~ ~ {Tags:["kill","turret.eye_re_anchor"]}
data modify storage class:mechanic X set from entity @n[tag=turret.eye_re_anchor] Pos[0]
data modify storage class:mechanic Y set from entity @n[tag=turret.eye_re_anchor] Pos[1]
data modify storage class:mechanic Z set from entity @n[tag=turret.eye_re_anchor] Pos[2]

execute if entity @s[tag=standard] run data modify storage class:mechanic color set value "0.600,0.600,0.000"
execute if entity @s[tag=sniper] run data modify storage class:mechanic color set value "0.200,0.200,0.200"
execute if entity @s[tag=rocket] run data modify storage class:mechanic color set value "0.000,0.600,0.600"

function class:4/mechanic/turret/visualize_macro with storage class:mechanic
kill @n[tag=kill,tag=turret.eye_re_anchor]