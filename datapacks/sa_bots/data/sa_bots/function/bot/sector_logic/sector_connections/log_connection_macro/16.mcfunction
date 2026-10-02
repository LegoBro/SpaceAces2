$execute unless data storage sa_bots:waypoint sector_connections[$(sector)].list{sector:16} run data modify storage sa_bots:waypoint sector_connections[$(sector)].list append value {sector:16}
$tag e-0-0-0-10 add sab.connectedToSector.$(sector)
tag e-0-0-0-10 add sab.sectorInformationValid