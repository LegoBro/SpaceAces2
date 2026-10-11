#executed by a bot waypoint
#return 1 to remove this as a possible target
#return 0 to keep as a possible target


#turrets shouldn't be placed too close to each other
execute if score #filter_possible_targets sab.var matches 1 if entity @e[type=item_display,tag=turret_base,distance=..10] run return 1
#snipers shouldn't perch right next to friendly snipers
execute if score #filter_possible_targets sab.var matches 2 if score #team sab.var matches 1 if entity @e[type=#projectile:players,scores={Class=3,Team=1},distance=..8] run return 1
execute if score #filter_possible_targets sab.var matches 2 if score #team sab.var matches 2 if entity @e[type=#projectile:players,scores={Class=3,Team=2},distance=..8] run return 1
#...

return 0