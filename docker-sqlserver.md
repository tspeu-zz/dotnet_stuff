

##install
docker pull microsoft/mssql-server-linux
//This downloads the latest SQL Server for Linux Docker image to your computer.


//para versiones específicas
docker pull mcr.microsoft.com/mssql/server:2017-latest-ubuntu 
docker pull mcr.microsoft.com/mssql/server:2019-CTP3.2-ubuntu.
//


#Launch the Docker 
//Image Also, if you downloaded a different Docker image, replace microsoft/mssql-server-linux with the one you downloaded.  

docker run -d --name sql_server_demo -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=reallyStrongPwd123' -p 1433:1433 microsoft/mssql-server-linux

docker run -d --name sql_server_demo -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=Aa99Dc31Docker' -p 1433:1433 microsoft/mssql-server-linux

-d : daemon mode
--name sql_server_demo : nombrar el container para stop/run
--e 'ACCEPT_EULA=Y' : aceptar (End User License Agreement)
--e 'SA_PASSWORD' pass to a dB
--p : puerto del container por defaul
microsoft/mssql-server-linux: indica el nombre de la Imagen Docker. si se baja una diferente utilizar esa.

AÑADIR VOLUNEN EN LOCAL 
docker run -d --name sql_server_CRM_test_ -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=Aa99Dc31Docker' -p 1433:1433 microsoft/mssql-server-linux 
-v CRM_volume:/var/opt/mssql
####
Password Strength
If you get the following error at this step, try again, but with a stronger password.

Microsoft(R) SQL Server(R) setup failed with error code 1. Please check the setup log in /var/opt/mssql/log for more information.
I received this error when using reallyStrongPwd as the password (but of course, it’s not a really strong password!). I was able to overcome this by adding some numbers to the end. However, if it wasn’t just a demo I’d definitely make it stronger than a few dictionary words and numbers.
##start container




##check container
docker ps 


#Install sql-cli 
npm install -g sql-cli


##Connect to SQL Server
Connect to SQL Server using the mssql command, followed by the username and password parameters.

mssql -u sa -p reallyStrongPwd123

##
docker start sql_server_demo

###Run a Quick Test
select @@version

SELECT * from testCRM.INFORMATION_SCHEMA.TABLES where  TABLE_TYPE = 'BASE TABLE'
SELECT * from Music.INFORMATION_SCHEMA.TABLES where  TABLE_TYPE = 'BASE TABLE'

use Music insert into Genres (Genre) values ('Rock')


192.168.1.68
##//https://stackoverflow.com/questions/48145881/#can-not-connect-to-sql-server-from-docker-supported-asp-net-core-project

Server=192.168.X.X,1433;Database=MyDatabase;User Id=sa;Password=SuperSecurePassword;MultipleActiveResultSets=true"
Server=192.168.1.68,1433;Database=testCRM;User Id=sa;Password=Aa99Dc31Docker;MultipleActiveResultSets=true"
############# *****

192.168.0.107
Server=192.168.0.107,1433;Database=testCRM;User Id=sa;Password=Aa99Dc31Docker;MultipleActiveResultSets=true"

SP_WHO
** mostrar conexiones a la db
KILL spdi

### BORRAR DB

IF EXISTS (
    SELECT [name]

##install
docker pull microsoft/mssql-server-linux
//This downloads the latest SQL Server for Linux Docker image to your computer.


//para versiones específicas
docker pull mcr.microsoft.com/mssql/server:2017-latest-ubuntu 
docker pull mcr.microsoft.com/mssql/server:2019-CTP3.2-ubuntu.
//


#Launch the Docker 
//Image Also, if you downloaded a different Docker image, replace microsoft/mssql-server-linux with the one you downloaded.  

docker run -d --name sql_server_demo -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=reallyStrongPwd123' -p 1433:1433 microsoft/mssql-server-linux

docker run -d --name sql_server_demo -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=Aa99Dc31Docker' -p 1433:1433 microsoft/mssql-server-linux

-d : daemon mode
--name sql_server_demo : nombrar el container para stop/run
--e 'ACCEPT_EULA=Y' : aceptar (End User License Agreement)
--e 'SA_PASSWORD' pass to a dB
--p : puerto del container por defaul
microsoft/mssql-server-linux: indica el nombre de la Imagen Docker. si se baja una diferente utilizar esa.

AÑADIR VOLUNEN EN LOCAL 
docker run -d --name sql_server_CRM_test_ -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=Aa99Dc31Docker' -p 1433:1433 microsoft/mssql-server-linux 
-v CRM_volume:/var/opt/mssql
####
Password Strength
If you get the following error at this step, try again, but with a stronger password.

Microsoft(R) SQL Server(R) setup failed with error code 1. Please check the setup log in /var/opt/mssql/log for more information.
I received this error when using reallyStrongPwd as the password (but of course, it’s not a really strong password!). I was able to overcome this by adding some numbers to the end. However, if it wasn’t just a demo I’d definitely make it stronger than a few dictionary words and numbers.
##start container




##check container
docker ps 


#Install sql-cli 
npm install -g sql-cli


##Connect to SQL Server
Connect to SQL Server using the mssql command, followed by the username and password parameters.

mssql -u sa -p reallyStrongPwd123
mssql -u sa -p Aa99Dc31Docker

##
docker start sql_server_demo

###Run a Quick Test
select @@version

SELECT * from testCRM.INFORMATION_SCHEMA.TABLES where  TABLE_TYPE = 'BASE TABLE'
SELECT * from Music.INFORMATION_SCHEMA.TABLES where  TABLE_TYPE = 'BASE TABLE'

use Music insert into Genres (Genre) values ('Rock')


192.168.1.68
##//https://stackoverflow.com/questions/48145881/#can-not-connect-to-sql-server-from-docker-supported-asp-net-core-project

Server=192.168.X.X,1433;Database=MyDatabase;User Id=sa;Password=SuperSecurePassword;MultipleActiveResultSets=true"
Server=192.168.1.68,1433;Database=testCRM;User Id=sa;Password=1Docker;MultipleActiveResultSets=true"
############# *****
SP_WHO
** mostrar conexiones a la db
KILL spdi

### BORRAR DB

IF EXISTS (
    SELECT [name]
    FROM  sys.databases
    WHERE [name] = N'testCRM')
DROP DATABASE testCRM


## BORRAR TABLAS
// tabla a tabla
If OBJECT_ID('[dbo].[__EFMigrationsHistory]', 'U') IS NOT NULL
DROP TABLE [dbo].[__EFMigrationsHistory]
GO

###
##dotnet new webapp -o aspnetcoreapp
dotnet ef migrations add initial
dotnet ef database update

## PROBLEMAS  CON JSON ANIDADOS
Microsoft.AspNetCore.Mvc.NewtonsoftJson
--
Install-Package Microsoft.AspNetCore.Mvc.NewtonsoftJson -Version 3.0.0
--
dotnet add package Microsoft.AspNetCore.Mvc.NewtonsoftJson --version 3.0.0
<PackageReference Include="Microsoft.AspNetCore.Mvc.NewtonsoftJson" Version="3.0.0" />


## BACKUP DOCKER
https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-configure-docker?view=sql-server-ver15
### docker cp d6b75213ef80:/var/opt/mssql/log/errorlog /tmp/errorlog

###
7cd3221162f8       microsoft/mssql-server-linux   "/opt/mssql/bin/sqls…"   3 weeks ago         Up 47 hours         0.0.0.0:1433->1433/tcp   sql_server_demo


 docker cp 7cd3221162f8:/var/opt/mssql/log/errorlog /tmp/errorlog
/var/opt/mssql/data/testCRM-20191030-12-43-48.bak /tmp/testCRM-20191030-12-43-48.bak

/var/opt/mssql/data/testCRM-20191015-10-53-49.bak
##
 docker cp 7cd3221162f8:/var/opt/mssql/data/testCRM-20191030-12-43-48.bak /tmp/testCRM-20191030-12-43-48.bak
 OK->

### Primero generar el backUp desde Azure Data Studio
docker cp 7cd3221162f8:/var/opt/mssql/data/testCRM-20191030-12-43-48.bak /tmp/testCRM-20191030-12-43-48.bak
### 



#CARGAR VOLUMEN DOCKER
docker run -e 'ACCEPT_EULA=Y' -e 'MSSQL_SA_PASSWORD=<YourStrong!Passw0rd>' -p 1433:1433 -v sqlvolume:/var/opt/mssql -d mcr.microsoft.com/mssql/server:2019-CTP3.2-ubuntu

docker run -d --name sql_server_CRM_test_ -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=Docker' -p 1433:1433 microsoft/mssql-server-linux -v CRM_volume:/var/opt/mssql

-------

 docker run -d --name sql_server_CRM_test -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=Docker' -p 1433:1433 microsoft/mssql-server-linux -v CRM_volume:/var/opt/mssql

    FROM  sys.databases
    WHERE [name] = N'testCRM')
DROP DATABASE testCRM


## BORRAR TABLAS
// tabla a tabla
If OBJECT_ID('[dbo].[__EFMigrationsHistory]', 'U') IS NOT NULL
DROP TABLE [dbo].[__EFMigrationsHistory]
GO

###
##dotnet new webapp -o aspnetcoreapp
dotnet ef migrations add initial
dotnet ef database update

## PROBLEMAS  CON JSON ANIDADOS
Microsoft.AspNetCore.Mvc.NewtonsoftJson
--
Install-Package Microsoft.AspNetCore.Mvc.NewtonsoftJson -Version 3.0.0
--
dotnet add package Microsoft.AspNetCore.Mvc.NewtonsoftJson --version 3.0.0
<PackageReference Include="Microsoft.AspNetCore.Mvc.NewtonsoftJson" Version="3.0.0" />


## BACKUP DOCKER
https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-configure-docker?view=sql-server-ver15
### docker cp d6b75213ef80:/var/opt/mssql/log/errorlog /tmp/errorlog

###
7cd3221162f8       microsoft/mssql-server-linux   "/opt/mssql/bin/sqls…"   3 weeks ago         Up 47 hours         0.0.0.0:1433->1433/tcp   sql_server_demo


 docker cp 7cd3221162f8:/var/opt/mssql/log/errorlog /tmp/errorlog
/var/opt/mssql/data/testCRM-20191030-12-43-48.bak /tmp/testCRM-20191030-12-43-48.bak

/var/opt/mssql/data/testCRM-20191015-10-53-49.bak
##
 docker cp 7cd3221162f8:/var/opt/mssql/data/testCRM-20191030-12-43-48.bak /tmp/testCRM-20191030-12-43-48.bak
 OK->

### Primero generar el backUp desde Azure Data Studio
docker cp 7cd3221162f8:/var/opt/mssql/data/testCRM-20191030-12-43-48.bak /tmp/testCRM-20191030-12-43-48.bak

docker cp 7cd3221162f8:/var/opt/mssql/data/testCRM-20191031-15-32-31.bak /tmp/testCRM-220191031-15-32-31.bak
                       /var/opt/mssql/data/testCRM-20191031-15-32-31.bak

### 



#CARGAR VOLUMEN DOCKER
docker run -e 'ACCEPT_EULA=Y' -e 'MSSQL_SA_PASSWORD=<YourStrong!Passw0rd>' -p 1433:1433 -v sqlvolume:/var/opt/mssql -d mcr.microsoft.com/mssql/server:2019-CTP3.2-ubuntu

docker run -d --name sql_server_CRM_test_ -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=1Docker' -p 1433:1433 microsoft/mssql-server-linux -v CRM_volume:/var/opt/mssql

-------

 docker run -d --name sql_server_CRM_test -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=1Docker' -p 1433:1433 microsoft/mssql-server-linux -v CRM_volume:/var/opt/mssql

dotnet new webapp -o aspnetcoreapp

# MIGRATIONS - EF
dotnet ef migrations add initial
dotnet ef database update

# SCAFOLDING DB OK net 3,0->
 dotnet ef dbcontext scaffold "Server=database.azure.com;Database=dev2;User=dadmin;Password=???????;TreatTinyAsBoolean=true;" "Pomelo.EntityFrameworkCore.MySql"

##
Docker
docker start sql_server_demo
Mac dotnet
# dotnet tool install --global dotnet-ef
https://docs.microsoft.com/en-gb/ef/core/miscellaneous/cli/dotnet
options.UseSqlServer(connection, b =&gt; b.MigrationsAssembly(&quot;CrmApi&quot;)
dotnet ef migrations add initial
dotnet ef database update

ef migrations remove

-
mssql -u sa -p Aa99Dc31Docker

-

SP_WHO
** mostrar conexiones a la db
KILL spdi

DROP DATABASE testCRM2

DROP TABLE [dbo].[__EFMigrationsHistory]


