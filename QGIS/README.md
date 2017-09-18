# Conectando o QGIS ao MS-SQLServer

### 1. Introduçao
### 2. O Suporte do MS-SQL Server a Infraestrutura de Dados Espaciais
### 3. O Linux e o suporte ao MS-SQL Server
### 4. O QGIS e o suporte a MS-SQL Server
### 5. A Distribuiçao Debian e suas variantes e o suporte a MS-SQL Server
#### 5.1 O Suporte do ODBC em Linux
#### 5.2 O Suporte do ODBC no Debian
```bash
# instalando o pacote tdsodbc
apt-get install tdsodbc
```
Declarando a existencia das bibliotecas TDSODBC no `odbcinst.ini`

```bash
vim /etc/odbcinst.ini
```
Agora, a biblioteca de suporte ao sistema ODBC do framework QT (sob o qual eh feito o QGIS), acessa MS-SQL Server, via ODBC, claro.
