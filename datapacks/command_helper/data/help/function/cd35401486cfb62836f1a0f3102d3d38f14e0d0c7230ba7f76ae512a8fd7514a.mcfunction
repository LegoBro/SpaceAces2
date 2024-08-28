data modify storage help:data safe_nbt_interpret set value {}

data modify storage help:data safe_nbt_interpret.v0 set value "null"
data modify storage help:data safe_nbt_interpret.v0 set from storage health:space translate
execute if data storage help:data {safe_nbt_interpret:{v0:"null"}} run data modify storage help:data safe_nbt_interpret.v0 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v0:[]}} run data modify storage help:data safe_nbt_interpret.v0 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v0:"[]"}} run data modify storage help:data safe_nbt_interpret.v0 set value '{"type":"text","text":""}'

data modify storage help:data safe_nbt_interpret.v1 set value "null"
data modify storage help:data safe_nbt_interpret.v1 set from storage health:ammo translate
execute if data storage help:data {safe_nbt_interpret:{v1:"null"}} run data modify storage help:data safe_nbt_interpret.v1 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v1:[]}} run data modify storage help:data safe_nbt_interpret.v1 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v1:"[]"}} run data modify storage help:data safe_nbt_interpret.v1 set value '{"type":"text","text":""}'

data modify storage help:data safe_nbt_interpret.v2 set value "null"
data modify storage help:data safe_nbt_interpret.v2 set from storage health:secondary translate
execute if data storage help:data {safe_nbt_interpret:{v2:"null"}} run data modify storage help:data safe_nbt_interpret.v2 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v2:[]}} run data modify storage help:data safe_nbt_interpret.v2 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v2:"[]"}} run data modify storage help:data safe_nbt_interpret.v2 set value '{"type":"text","text":""}'

data modify storage help:data safe_nbt_interpret.v3 set value "null"
data modify storage help:data safe_nbt_interpret.v3 set from storage health:tertiary translate
execute if data storage help:data {safe_nbt_interpret:{v3:"null"}} run data modify storage help:data safe_nbt_interpret.v3 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v3:[]}} run data modify storage help:data safe_nbt_interpret.v3 set value '{"type":"text","text":""}'
execute if data storage help:data {safe_nbt_interpret:{v3:"[]"}} run data modify storage help:data safe_nbt_interpret.v3 set value '{"type":"text","text":""}'

return run title @s actionbar [{"translate":"space.-154","with":[""]},{"nbt":"text","storage":"health:bar","source":"storage","type":"nbt"},{"translate":"space.-108","with":[""]},{"nbt":"safe_nbt_interpret.v0","storage":"help:data","interpret":true,"source":"storage","type":"nbt"},{"score":{"name":"@s","objective":"health"},"font":"health","type":"score"},{"translate":"space.-5","with":[""]},{"nbt":"safe_nbt_interpret.v1","storage":"help:data","interpret":true,"source":"storage","type":"nbt"},{"score":{"name":"@s","objective":"totalShots"},"font":"ammo","type":"score"},{"translate":"space.27","with":[""]},{"nbt":"safe_nbt_interpret.v2","storage":"help:data","interpret":true,"source":"storage","type":"nbt"},{"score":{"name":"secondary","objective":"Numbers"},"font":"secondary","type":"score"},{"translate":"space.9","with":[""]},{"nbt":"safe_nbt_interpret.v3","storage":"help:data","interpret":true,"source":"storage","type":"nbt"},{"score":{"name":"tertiary","objective":"Numbers"},"font":"tertiary","type":"score"}]