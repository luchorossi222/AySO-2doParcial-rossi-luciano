
En el host ejecutamos los siguientes comandos 

ip address show : debe mostrar la ip configurada en el vagrantfile

ll .ssh/ :listamos los archivos del directorio .ssh para interactuar después con el archivo authorized_keys

echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDXtl/kTyIMAm0+w3/0gwVriLIKKaA2g4r3/a5Yqyumi8jAZFwiPCYVO2fcTmvM8OREADsLama4QnAh5z1jAC0JYSxYtrPX1x+gwfzQuOYYYBeahQMAUJpLXZGa4XetFvPuRF8GHNPNDMJIUSWMc/qacP2T7XyAWknBQeAXECCmD3qBRQ2HTCAz4zFP/N7ZbCzIxanDaJkGOYI/tFbW/Qdlc7vaAD6OQkJkST1ukwg+EQly92FwbIruBmInBg0wcCZywylC5ODI5yLijPTzAb7lvWDldIxflZcWJWRluzahMXOQzvzZhQl2KiFhzDmuv7h0MK87Zr+f5plrc6D+hdSeig8uhnNrYmxNV3enQi8rT798yWvBAEpvJEBL/wUIqvUI6low+xiE2rvJhsDRu7mJuHnTb93VX7n5HK5krPGhnBbCBrqfNQYQoymm2rjfhkQQWW7Qco/u8YbLfcYaVTF7ZX3TMQi84OfIkf52adOYjzZrAfJ5fCXwlarX8Hr0Vfk= vagrant@vmAMN213" > .ssh/authorized_keys :almacenamos en el archivo keys la calve publica generada por el nodo para conectarnos por ssh

 sudo apt list --installed |grep apache : usamos este comando para ver si apache se instalo correctamente 
resultado:
apache2-bin/jammy-updates,jammy-security,now 2.4.52-1ubuntu4.12 amd64 [installed,automatic]
apache2-data/jammy-updates,jammy-security,now 2.4.52-1ubuntu4.12 all [installed,automatic]
apache2-utils/jammy-updates,jammy-security,now 2.4.52-1ubuntu4.12 amd64 [installed,automatic]
apache2/jammy-updates,jammy-security,now 2.4.52-1ubuntu4.12 amd64 [installed]



en el nodo ejecutamos los siguiente comandos:

primero creamos un  respositorio para guardar la respuesta del parcial( SO-2doParcial-rossi-luciano/)

instalamos ansible
sudo apt install ansible
restart kernel

generamos las claves : ssh-keygen (clave privada y publica )


vemos la clave publica para copiarla y configurar el host /cliente :cat .ssh/id_rsa.pub

clonamos el repo para obtener los archivos (invetory , playbook) y instalar apache en el cliente :git clone https://github.com/upszot/UTN-FRA_SO_Ansible.git

nos conectamos al cliente :  ssh vagrant@192.168.56.9 para chequear conexión 

exit cortamos conexión con el cliente 

entramos a la carpeta : /UTN-FRA_SO_Ansible/ejemplo_02

configuramos el archivo inventory seteando  el cliente : vim inventory

configuramos el archivo playbook.yml con vim para descargar apache en el cliente

ansible-playbook -i inventory playbook.yml: instala apache en el host (configurado el archivo inventory) con la diretrices configuradas en el archivo playbook.yml

