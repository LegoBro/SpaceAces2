execute if score #yaw_difference sab.var matches ..-4500 at @s run rotate @s ~30 ~
execute if score #yaw_difference sab.var matches -4499..-2500 at @s run rotate @s ~12 ~
execute if score #yaw_difference sab.var matches -2499..-500 at @s run rotate @s ~7 ~
execute if score #yaw_difference sab.var matches -499..-100 at @s run rotate @s ~1.8 ~
execute if score #yaw_difference sab.var matches -99..99 at @s run function sa_bots:bot/movement/rotate/lock_on_yaw
execute if score #yaw_difference sab.var matches 100..499 at @s run rotate @s ~-1.8 ~
execute if score #yaw_difference sab.var matches 500..2499 at @s run rotate @s ~-7 ~
execute if score #yaw_difference sab.var matches 2500..4499 at @s run rotate @s ~-12 ~
execute if score #yaw_difference sab.var matches 4500.. at @s run rotate @s ~-30 ~

execute if score #pitch sab.var matches ..-4500 at @s run rotate @s ~ ~30
execute if score #pitch sab.var matches -4499..-2500 at @s run rotate @s ~ ~12
execute if score #pitch sab.var matches -2499..-500 at @s run rotate @s ~ ~7
execute if score #pitch sab.var matches -499..-100 at @s run rotate @s ~ ~1.8
execute if score #pitch sab.var matches -99..99 at @s run function sa_bots:bot/movement/rotate/lock_on_pitch
execute if score #pitch sab.var matches 100..499 at @s run rotate @s ~ ~-1.8
execute if score #pitch sab.var matches 500..2499 at @s run rotate @s ~ ~-7
#look upward is slightly slower
execute if score #pitch sab.var matches 2500..4499 at @s run rotate @s ~ ~-10
execute if score #pitch sab.var matches 4500.. at @s run rotate @s ~ ~-20