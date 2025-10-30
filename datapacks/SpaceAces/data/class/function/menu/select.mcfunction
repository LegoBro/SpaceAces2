## Select in menu!

item replace block 15 -63 0 container.0 from entity @s player.cursor

function class:clear_inventory
function class:menu/select_macro with block 15 -63 0 Items[0].components."minecraft:custom_data"

item replace entity @s player.cursor with air