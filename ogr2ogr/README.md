# Importando dados de um Shapefile para o MS-SQLServer

```bash
ogr2ogr --DEBUG ON  \
-lco "GEOM_TYPE=GEOMETRY" \
-lco "SCHEMA=dbo" \
-nln "2"  \
-lco "GEOMETRY_NAME=geom" \
-lco "FID=chave" \
-lco "SPATIAL_INDEX=YES"  \
-a_srs "EPSG:4326" \
-lco "GEOM_TYPE=geometry"  \
-lco "OVERWRITE=YES"  \
-f MSSQLSpatial  "MSSQL:driver=FreeTDS;DSN=SERVIDOR1;database=Terra;uid=sa;pwd=Miguel7penteado"  \
"2.shp"  \
-progress
```

```bash
ogr2ogr --DEBUG ON  \
-lco "GEOM_TYPE=GEOMETRY" \
-lco "SCHEMA=dbo" \
-nln "2"  \
-lco "GEOMETRY_NAME=geom" \
-lco "FID=chave" \
-lco "SPATIAL_INDEX=YES"  \
-a_srs "EPSG:4326" \
-lco "GEOM_TYPE=geometry" \
-lco "ENCODING=UTF-8"  \
-lco "OVERWRITE=YES"  \
-f MSSQLSpatial  "MSSQL:driver=ODBC Driver 13 for SQL Server;server=127.0.0.1;database=Terra;uid=sa;pwd=Miguel7penteado"   \
"2.shp"   \
-progress
```
