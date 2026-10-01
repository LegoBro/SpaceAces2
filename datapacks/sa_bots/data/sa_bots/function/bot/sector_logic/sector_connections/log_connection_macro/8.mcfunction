$execute unless data storage sa_bots:waypoint sector_connections[$(sector)].list{sector:8} run data modify storage sa_bots:waypoint sector_connections[$(sector)].list append value {sector:8}
$tag d-0-0-0-8 add sab.connectedToSector.$(sector)
tag d-0-0-0-8 add sab.sectorInformationValid