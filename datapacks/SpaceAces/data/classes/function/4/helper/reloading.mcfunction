## Used when reloading (generated)
$execute if score @s totalShots >= class.$(class).primary.ammo Numbers run scoreboard players set @s reload 0
scoreboard players add @s[scores={reload=1..}] reload 1

$scoreboard players operation #reload Numbers = class.$(class).primary.reload Numbers
scoreboard players operation #reload Numbers -= @s reload

$data modify storage class:reload model set value "$(class)/0"
$execute store result storage class:reload max int 1 run scoreboard players get class.$(class).primary.reload Numbers
execute store result storage class:reload value int 1 run scoreboard players get #reload Numbers
function classes:4/helper/reload_item with storage class:reload

# Reload Done
$execute if score @s reload >= class.$(class).primary.reload Numbers run function classes:4/$(class)/primary/reload

return 1



