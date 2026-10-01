$execute unless data storage sa_bots:waypoint sector_connections[$(sector)].list{sector:7} run data modify storage sa_bots:waypoint sector_connections[$(sector)].list append value {sector:7}
$tag d-0-0-0-7 add sab.connectedToSector.$(sector)
tag d-0-0-0-7 add sab.sectorInformationValid