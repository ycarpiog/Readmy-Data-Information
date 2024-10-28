
# No se puede consultar la máquina fuente Linux activa. Asegúrese de poder ejecutar sudo sin ingresar una contraseña cuando inicie sesión en la máquina de origen a través de SSH como '<username>'.


<h1 align="center">:shipit:  <username> ALL=(ALL) NOPASSWD:ALL en la terminal, pero esa línea debe colocarse en el archivo de configuración de sudoers, no en la línea de comandos.</h1>


Para hacerlo correctamente, sigue estos pasos:


> [!STEEP 1]
> Abre el archivo sudoers con visudo (usando visudo se aseguran los permisos y la sintaxis correcta).
```bash
sudo visudo
```
> [!STEEP 3]
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
