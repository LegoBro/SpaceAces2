$execute unless data storage sa_bots:waypoint sector_connections[$(sector)].list{sector:3} run data modify storage sa_bots:waypoint sector_connections[$(sector)].list append value {sector:3}
$tag e-0-0-0-3 add sab.connectedToSector.$(sector)
tag e-0-0-0-3 add sab.sectorInformationValid