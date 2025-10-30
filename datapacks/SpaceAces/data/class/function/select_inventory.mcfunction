## Select Inventory - has special class UI and selectors


## Handle Select
execute if items entity @s player.cursor diamond[custom_data~{class_menu:true}] run function class:menu/select

## 3 class options
function class:menu/0

execute if score @s menu matches 1 run return run function class:menu/1
execute if score @s menu matches 2 run return run function class:menu/2
execute if score @s menu matches 3 run return run function class:menu/3
