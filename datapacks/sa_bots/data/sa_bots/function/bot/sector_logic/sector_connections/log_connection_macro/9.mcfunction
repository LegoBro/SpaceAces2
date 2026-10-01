$execute unless data storage sa_bots:waypoint sector_connections[$(sector)].list{sector:9} run data modify storage sa_bots:waypoint sector_connections[$(sector)].list append value {sector:9}
$tag d-0-0-0-9 add sab.connectedToSector.$(sector)
tag d-0-0-0-9 add sab.sectorInformationValid