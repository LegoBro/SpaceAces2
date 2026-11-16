#rotate e-0-0-0-10 so it faces the input coordinates
$execute positioned 0.0 0.0 0.0 positioned ~$(x) ~$(y) ~$(z) if loaded ~ ~ ~ run tp e-0-0-0-10 ~ ~ ~
execute facing entity e-0-0-0-10 feet run rotate e-0-0-0-10 ~ ~

#read yaw and pitch
execute store result score #target_yaw sab.var run data get entity e-0-0-0-10 Rotation[0] 100
execute store result score #target_pitch sab.var run data get entity e-0-0-0-10 Rotation[1] 100

#send e back home
tp e-0-0-0-10 0 50 0