data modify storage help:data safe_nbt_interpret set value {}

data modify storage help:data safe_nbt_interpret.v0 set value "h_null"
data modify storage help:data safe_nbt_interpret.v0 set from storage health:space translate

execute if score @s damage_display matches 8.. run data modify storage help:data safe_nbt_interpret.v0.0 set value {"score":{"name":"@s","objective":"health"},"font":"health","type":"score","color":"white"}
execute if score @s damage_display matches 1..7 run data modify storage help:data safe_nbt_interpret.v0.0 set value {"score":{"name":"@s","objective":"health"},"font":"health","type":"score","color":"#844444"}
execute if score @s damage_display matches ..-1 run data modify storage help:data safe_nbt_interpret.v0.0 set value {"score":{"name":"@s","objective":"health"},"font":"health","type":"score","color":"#6cb553"}
execute unless score @s damage_display matches 1.. unless score @s damage_display matches ..-1 run data modify storage help:data safe_nbt_interpret.v0.0 set value {"score":{"name":"@s","objective":"health"},"font":"health","type":"score","color":"#3568ff"}



data modify storage help:data safe_nbt_interpret.v1 set value "a_null"
data modify storage help:data safe_nbt_interpret.v1 set from storage health:ammo translate

execute unless score @s totalShots matches 0 run data modify storage help:data safe_nbt_interpret.v1.0 set value {"score":{"name":"@s","objective":"totalShots"},"font":"hud","type":"score","color":"gray"}
execute if score @s totalShots matches ..0 run data modify storage help:data safe_nbt_interpret.v1.0 set value {translate: "space.5"}



data modify storage help:data safe_nbt_interpret.v2 set value "2s_null"
data modify storage help:data safe_nbt_interpret.v2 set from storage player:actionbar secondary_spacer


data modify storage help:data safe_nbt_interpret.v2.0 set value "2_null"
data modify storage help:data safe_nbt_interpret.v2.0 set from storage player:actionbar secondary


data modify storage help:data safe_nbt_interpret.v3 set value "3s_null"
data modify storage help:data safe_nbt_interpret.v3 set from storage player:actionbar tertiary_spacer


data modify storage help:data safe_nbt_interpret.v3.0 set value "3_null"
data modify storage help:data safe_nbt_interpret.v3.0 set from storage player:actionbar tertiary


data modify storage help:data safe_nbt_interpret.ult set value "ult_spacer_null"
data modify storage help:data safe_nbt_interpret.ult set from storage player:actionbar ult_spacer


data modify storage help:data safe_nbt_interpret.ult.0 set value "ult_null"
data modify storage help:data safe_nbt_interpret.ult.0 set from storage player:actionbar ult


## Final Actionbar
return run title @s actionbar [\
    {"translate":"space.-118","with":[""]},\
    {"nbt":"text","storage":"health:bar","source":"storage","type":"nbt"},\
    {"translate":"space.-108","with":[""]},\
    {"nbt":"safe_nbt_interpret.v0","storage":"help:data","interpret":true,"source":"storage","type":"nbt"},\
    {"nbt":"safe_nbt_interpret.v0.0","storage":"help:data","interpret":true,"source":"storage","type":"nbt"},\
    {"translate":"space.-4","with":[""]},\
    {"nbt":"safe_nbt_interpret.v1","storage":"help:data","interpret":true,"source":"storage","type":"nbt"},\
    {"nbt":"safe_nbt_interpret.v1.0","storage":"help:data","interpret":true,"source":"storage","type":"nbt"},\
    {"translate":"space.27","with":[""]},\
    {"nbt":"safe_nbt_interpret.v2","storage":"help:data","interpret":true,"source":"storage","type":"nbt"},\
    {"nbt":"safe_nbt_interpret.v2.0","storage":"help:data","interpret":true,"source":"storage","type":"nbt"},\
    {"translate":"space.9","with":[""]},\
    {"nbt":"safe_nbt_interpret.v3","storage":"help:data","interpret":true,"source":"storage","type":"nbt"},\
    {"nbt":"safe_nbt_interpret.v3.0","storage":"help:data","interpret":true,"source":"storage","type":"nbt"},\
    {"translate":"space.30","with":[""]},\
    {"nbt":"safe_nbt_interpret.ult","storage":"help:data","interpret":true,"source":"storage","type":"nbt"},\
    {"nbt":"safe_nbt_interpret.ult.0","storage":"help:data","interpret":true,"source":"storage","type":"nbt"}\
]
