$execute unless data storage sa_bots:waypoint sector_connections[$(sector)].list{sector:12} run data modify storage sa_bots:waypoint sector_connections[$(sector)].list append value {sector:12}
$tag d-0-0-0-c add sab.connectedToSector.$(sector)
tag d-0-0-0-c add sab.sectorInformationValid