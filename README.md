
# No se puede consultar la máquina fuente Linux activa. Asegúrese de poder ejecutar sudo sin ingresar una contraseña cuando inicie sesión en la máquina de origen a través de SSH como '<username>'.


<h1 align="center">:shipit:  <username> ALL=(ALL) NOPASSWD:ALL en la terminal, pero esa línea debe colocarse en el archivo de configuración de sudoers, no en la línea de comandos.</h1>


Para hacerlo correctamente, sigue estos pasos:


> [!STEEP 1]
> Abre el archivo sudoers con visudo (usando visudo se aseguran los permisos y la sintaxis correcta).
```bash
sudo visudo
```
> [!STEEP 2]
> Agrega la línea al archivo que se abre en el editor. Esto debe hacerse en una línea separada en el archivo sudoers.
```bash
<username> ALL=(ALL) NOPASSWD:ALL
```

> [!STEEP 3]
> Guarda y cierra el archivo. En la mayoría de los editores de texto, puedes hacerlo con Ctrl + X, luego Y para confirmar, y Enter para guardar y salir.
```bash
Ctrl + X
y
```
<h1 align="center">:shipit: Guìa de Instalaciòn<br>Bot Verificacion Activaciòn</h1>

Solucion Automatizada con Python-Selenium-Docker-Passbolt para Automatizar los Procesos de Verificaciòn de productos y Activaciòn de Lìneas Pata Movistar

> [!NOTE]
> Instalaciòn.

```bash
git clone https://github.com/
cd Folder_Name
```
> [!IMPORTANT]
> Configurar .env

```bash
#Passbolt Detail
PASSBOLT_URL= 'Passbolt Url'
PASSBOLT_PORT='Passbolt pORT'
PASSBOLT_ID="Passbolt KEY"
PASSBOLT_MAIL='Passbolt Use or Mail'
PASSBOLT_PASSPHASE = "Passbolt PASSPHASE"

#Server Detail
SQL_DRIVER='SQL SERVER (Para este Proyecto es ODBC Driver 17 for SQL Server)'
SQL_SERVER='Database HOST'
SQL_PORT = 'Database PORT'
SQL_DB_TEST='SQL Database Test'
SQL_DB='Database'
SQL_USER='Database user'
SQL_PASS='Database pass' 

#Resources 
RESOURCE_VALIDACION=''
RESOURCE_ACTIVACION=''
RESOURCE_SERIES_TEL=''
RESOURCE_SERIES_B2B=''
RESOURCE_CONTRATOS='' 

#Loguin Config
PATH_CONFIG_LOGS = 'config/logging.json'
```
> [!TIP]
> Ejecutar Docker Compose.

```bash
docker compose up -d
```

> [!IMPORTANT]
> Configurar GPG en Contenedor.


```bash
docker exec -it <name container> bash 
gpg --import /config/key.txt 
(set PASSBOLT_PASSPHASE) press ok
docker restart <nombre_del_contenedor>
