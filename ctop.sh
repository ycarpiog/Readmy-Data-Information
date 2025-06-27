
sudo wget https://github.com/bcicen/ctop/releases/download/v0.7.7/ctop-0.7.7-linux-amd64 -O /usr/local/bin/ctop
sudo chmod +x /usr/local/bin/ctop

# 1. Actualizar paquetes
sudo apt update && sudo apt upgrade -y

# 2. Instalar dependencias
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# 3. Agregar la clave GPG oficial de Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# 4. Agregar el repositorio de Docker
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# 5. Instalar Docker Engine
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io

# 6. Verificar que Docker esté funcionando
sudo systemctl status docker
sudo docker run hello-world  # Debería mostrar un mensaje de éxito
sudo usermod -aG docker $USER
newgrp docker
