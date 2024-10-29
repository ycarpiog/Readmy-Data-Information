

<h1 align="center">:shipit: Para instalar Go 1.23.2 en un sistema Linux usando el archivo .tar.gz, sigue estos pasos:</h1>


Descarga el archivo:

> [!STEEP 1]
> Si no lo has hecho ya, puedes descargar el archivo con:
```bash
wget https://go.dev/dl/go1.23.2.linux-amd64.tar.gz
```
> [!STEEP 2]
> Descomprime el archivo en el directorio /usr/local, que es el lugar recomendado para Go:
```bash
sudo tar -C /usr/local -xzf go1.23.2.linux-amd64.tar.gz
```
> [!STEEP 3]
> Añade Go al PATH para que puedas usar el comando go desde cualquier lugar. Abre el archivo ~/.profile o ~/.bashrc y agrega la siguiente línea:
```bash
export PATH=$PATH:/usr/local/go/bin
```
> [!STEEP 4]
> Luego, recarga el archivo para aplicar los cambios:
```bash
source ~/.profile
```
> [!STEEP 5]
> Confirma que Go se instaló correctamente con:
```bash
go version
```

Después de esto, deberías ver algo como go version go1.23.2 linux/amd64 como confirmación.
