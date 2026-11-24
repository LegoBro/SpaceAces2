$execute store result storage weather:cloud_emitter rand_x float .1 run random value -$(radius_x)0..$(radius_x)0
$execute store result storage weather:cloud_emitter rand_y float .1 run random value -$(radius_y)0..$(radius_y)0
$execute store result storage weather:cloud_emitter rand_z float .1 run random value -$(radius_z)0..$(radius_z)0

function weather:cloud_emitter/group_location with storage weather:cloud_emitter

$execute store result score @s weather.timer run random value -$(delay_max)..-$(delay_min)