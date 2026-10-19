## Prepares arena based on what's stored in data
$function arena:load/$(name)
$execute positioned $(center) run forceload add ~-128 ~-128 ~128 ~0
$execute positioned $(center) run forceload add ~-128 ~0 ~128 ~128
#$say execute positioned $(center) run forceload add ~-256 ~-256 ~256 ~256