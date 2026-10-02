$execute unless data storage sa_bots:waypoint sector_connections[$(sector)].list{sector:6} run data modify storage sa_bots:waypoint sector_connections[$(sector)].list append value {sector:6}
$tag e-0-0-0-6 add sab.connectedToSector.$(sector)
tag e-0-0-0-6 add sab.sectorInformationValid