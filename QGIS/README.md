# Conectando o QGIS ao MS-SQLServer

### 1. Introduçao
### 2. O Suporte do MS-SQL Server a Infraestrutura de Dados Espaciais
### 3. O Linux e o suporte ao MS-SQL Server
O Linux pode conversar nativamente com SGBDs Microsoft e Sybase utilizando a biblioteca [FreeDTS](http://www.freetds.org/), e por esta razao, iremos procurar este pacote para dsitro especifica e iremos instala-lo.

### 4. O QGIS e o suporte a MS-SQL Server
#### 4.1 Garantindo que os conectores provedores do framework Qt estao instalados no Debian

```bash
# suporte a conectores para framework Qt 4
libqt4-sql*
# suporte a conectores para framework Qt 5
apt-get install libqt5sql5*
# instalando o pacote de scripts sql do qt  
apt-get install libqtscript4-sql
```

### 5. A Distribuiçao Debian e suas variantes e o suporte a MS-SQL Server
#### 5.1 O Suporte do ODBC em Linux

#### 5.2 O Suporte do ODBC no Debian
```bash
apt-get install unixodbc unixodbc-dev unixodbc-bin
# instalando o pacote tdsodbc
apt-get install tdsodbc
```
Declarando a existencia das bibliotecas TDSODBC no `odbcinst.ini`

```bash
vim /etc/odbcinst.ini
```
Acrescente no arquivo ini a seguinte seçao

```conf
[FreeTDS]
  Description = TDS Driver for MSSQL
  driver = /usr/lib/x86_64-linux-gnu/odbc/libtdsodbc.so
  setup =  /usr/lib/x86_64-linux-gnu/odbc/libtdsS.so
```

Agora, a biblioteca de suporte ao sistema ODBC do framework QT (sob o qual eh feito o QGIS), acessa MS-SQL Server, via ODBC, claro.
