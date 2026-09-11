## atomic_shrink is ready
item replace entity @s hotbar.4 from block 15 -62 0 container.4
    
execute if score @s rightClick matches 1.. if score @s SelectedItem matches 4 run function class:4/scout/atomic_shrink/activate
function class:4/helper/actionbar/generic/ultimate_ready