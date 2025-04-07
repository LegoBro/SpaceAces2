## Used when reloading
$execute if score @s totalShots >= class.$(class).primary.ammo Numbers run scoreboard players set @s reload 0
scoreboard players add @s[scores={reload=1..}] reload 1

$scoreboard players operation #reload Numbers = class.$(class).primary.reload Numbers
scoreboard players operation #reload Numbers -= @s reload

$data modify storage class:reload model set value "class/$(class)/primary"
$execute store result storage class:reload max int 1 run scoreboard players get class.$(class).primary.reload Numbers
execute store result storage class:reload value int 1 run scoreboard players get #reload Numbers
function class:4/helper/reload_item with storage class:reload

# Reload Done
$execute if score @s reload >= class.$(class).primary.reload Numbers run function class:4/$(class)/primary/reload

execute if score @s SelectedItem matches 0 run scoreboard players reset @s rightClick

return 1



