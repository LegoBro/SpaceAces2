#executed by an entity that a bot is targeting AND has a line-of-sight to
#executed at the position of the bot (at eye height!)

#this is the place to add variation depending on the target's height!
#(higher y means we aim lower down)
execute if score #var sab.var matches 0 at e-0-0-0-1 positioned ~ ~-.7 ~ facing entity @s feet run rotate e-0-0-0-1 ~ ~
execute if score #var sab.var matches 1 at e-0-0-0-1 facing entity @s eyes run rotate e-0-0-0-1 ~ ~
execute if score #var sab.var matches 101 positioned ~ ~.5 ~ facing entity @s feet run rotate e-0-0-0-1 ~ ~
execute if score #var sab.var matches 102 positioned ~ ~-.33 ~ facing entity @s feet run rotate e-0-0-0-1 ~ ~
execute if score #var sab.var matches 103 positioned ~ ~.33 ~ facing entity @s feet run rotate e-0-0-0-1 ~ ~
execute if score #var sab.var matches 104 positioned ~ ~.6 ~ facing entity @s feet run rotate e-0-0-0-1 ~ ~
