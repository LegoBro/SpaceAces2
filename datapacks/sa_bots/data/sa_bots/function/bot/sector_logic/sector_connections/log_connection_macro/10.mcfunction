$execute unless data storage sa_bots:waypoint sector_connections[$(sector)].list{sector:10} run data modify storage sa_bots:waypoint sector_connections[$(sector)].list append value {sector:10}
$tag d-0-0-0-a add sab.connectedToSector.$(sector)
tag d-0-0-0-a add sab.sectorInformationValid