## Stores currently selected mode (based on index) from id to other values

$data modify storage space_aces:selected_gamemode map_name set from storage space_aces:selected_gamemode gamemode.maps[$(map_index)]
