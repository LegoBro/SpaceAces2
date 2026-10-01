$execute unless data storage sa_bots:waypoint sector_connections[$(sector)].list{sector:15} run data modify storage sa_bots:waypoint sector_connections[$(sector)].list append value {sector:15}
$tag d-0-0-0-f add sab.connectedToSector.$(sector)
tag d-0-0-0-f add sab.sectorInformationValid