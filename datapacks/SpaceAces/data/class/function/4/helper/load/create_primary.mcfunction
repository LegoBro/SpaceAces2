## Creates the item, which is swapped into the player's hotbar rather than created
$data modify block 15 -63 0 Items[{Slot:0b}].components."minecraft:lore" append value {text:" - Damage: $(damage)",color:"#ffaaaa","italic":false}
$data modify block 15 -63 0 Items[{Slot:0b}].components."minecraft:lore" append value {text:" - Crit: $(critMult)x",color:"#ffaaff","italic":false}
$data modify block 15 -63 0 Items[{Slot:0b}].components."minecraft:lore" append value {text:" - Reload: $(reload)s",color:"#aaffaa","italic":false}
$data modify block 15 -63 0 Items[{Slot:0b}].components."minecraft:lore" append value {text:" - Range: $(falloffStart)b",color:"#aaaaff","italic":false}