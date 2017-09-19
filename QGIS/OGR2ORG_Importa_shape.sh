
ogr2ogr   -f MSSQLSpatial   "MSSQL:server=127.0.0.1;database=Terra;uid=sa;pwd=@MyMSSQLDocker112"   "teste.shp" -nln "Paises"  -a_srs "EPSG:4326"   -progress
