$execute unless data storage sa_bots:waypoint sector_connections[$(sector)].list{sector:13} run data modify storage sa_bots:waypoint sector_connections[$(sector)].list append value {sector:13}
$tag d-0-0-0-d add sab.connectedToSector.$(sector)
tag d-0-0-0-d add sab.sectorInformationValid