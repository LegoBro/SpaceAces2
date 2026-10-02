$execute unless data storage sa_bots:waypoint sector_connections[$(sector)].list{sector:2} run data modify storage sa_bots:waypoint sector_connections[$(sector)].list append value {sector:2}
$tag e-0-0-0-2 add sab.connectedToSector.$(sector)
tag e-0-0-0-2 add sab.sectorInformationValid