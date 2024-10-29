Para instalar Go 1.23.2 en un sistema Linux usando el archivo .tar.gz, sigue estos pasos:

Descarga el archivo:

Si no lo has hecho ya, puedes descargar el archivo con:
bash
Copiar código
wget https://go.dev/dl/go1.23.2.linux-amd64.tar.gz
Extrae el archivo:

Descomprime el archivo en el directorio /usr/local, que es el lugar recomendado para Go:
bash
Copiar código
sudo tar -C /usr/local -xzf go1.23.2.linux-amd64.tar.gz
Configura el PATH:

Añade Go al PATH para que puedas usar el comando go desde cualquier lugar. Abre el archivo ~/.profile o ~/.bashrc y agrega la siguiente línea:
bash
Copiar código
export PATH=$PATH:/usr/local/go/bin
Luego, recarga el archivo para aplicar los cambios:
bash
Copiar código
source ~/.profile
Verifica la instalación:

Confirma que Go se instaló correctamente con:
bash
Copiar código
go version
Después de esto, deberías ver algo como go version go1.23.2 linux/amd64 como confirmación.
