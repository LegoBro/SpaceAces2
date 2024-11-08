#Reduces Accuracy for use in projectiles
# Input is $(SpreadX) $(SpreadY) (higher is more spread)
$execute facing ^$(SpreadX) ^$(SpreadY) ^100 positioned ^ ^ ^.40 run function projectile:ray
#$say Spreads: $(SpreadX) , $(SpreadY)
return 1