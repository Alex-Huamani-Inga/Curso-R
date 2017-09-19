## CLI

* Fuente: [hipertextual](https://hipertextual.com/archivo/2014/04/comandos-basicos-terminal/)


Las distribuciones Linux hacen cada vez m�s completas y funcionales, pero la terminal siempre ha estado y estar� all� para ayudarte y no lo contrario, como quiz� hayas pensado. De hecho, en algunas distribuciones es el primer contacto entre el usuario y el sistema.

Si comienzas a usar la terminal con regularidad, notaras que es una potente herramienta que permite mantener y en algunos casos hasta salvar tu instalaci�n de esos indeseables problemas que ocurren justo despu�s de una gran actualizaci�n del sistema, por solo nombrar un ejemplo.

### Acceso con previlegios

Para realizar ciertos procesos, c�mo por ejemplo la instalaci�n de aplicaciones. En algunos casos vamos a tener que usar el comando **sudo**, el cual nos confiere permisos de administrador del sistema y nos solicita siempre nuestra contrase�a para poder ejecutarse.

El comando **sudo** siempre inicia la linea de comandos a ejecutar.

### Instalar aplicaciones

**APT** (Advance Packagin Tool) es una herramienta de empaquetado de aplicaciones creada por el proyecto Debian, para simplificar la instalaci�n y desinstalaci�n de programas en Linux.

Para instalar aplicaciones en Linux mediante la consola, usamos el comando `apt-get`.

Ejemplo:

```
sudo apt-get install r-base
```

El comando `apt-get` tambi�n funciona para desinstalar software a�adiendo el sufijo `remove`, y si adem�s a�adimos la orden `--purge` podemos eliminar todos los datos de un programa, para que no quede rastro de �l en nuestro sistema.

```
sudo apt-get remove --purge firefox
```

### Descargas

`GNU Wget` es una herramienta que nos permite descargar contenidos desde servidores web directamente desde la terminal. Soporta descargas mediante los protocolos HTTP, HTTPS y FTP.

Es un comando bastante poderoso y con diferentes funciones, pero para simplemente descargar un archivo y almacenarlo en el directorio personal, c�mo por ejemplo el kernel de Linux, usamos el comando `wget -c`.

### Cp

Cp (de copy o copiar), copia un archivo o directorio origen a un archivo o directorio destino. Por ejemplo, para copiar el archivo `prueba.txt` ubicado en `/home` a un directorio de respaldo, podemos usar:

```
cp /home/prueba.txt /home/respaldo/prueba.txt
```

En la sintaxis siempre se especifica primero el origen y luego el destino. Si indicamos un nombre de destino diferente, `cp` copiar� el archivo o directorio con el nuevo nombre.

El comando tambi�n cuenta con la opci�n `-r` que copia no s�lo el directorio especificado sino todos sus directorios internos de forma recursiva. Suponiendo que deseamos hacer una copia del directorio `/home/ejercicios` que a su vez tiene las carpetas `ejercicio1` y `ejercicio2` en su interior, en lugar de ejecutar un comando para cada carpeta, ejecutamos:

```
cp -r /home/ejercicios /home/respaldos/
```

### Pwd

Pwd (de print working directory o imprimir directorio de trabajo), es un conveniente comando que imprime nuestra ruta o ubicaci�n al momento de ejecutarlo, as� evitamos perdernos si estamos trabajando con m�ltiples directorios y carpetas. Su sintaxis seria:

```
pwd
```

### Touch

Touch crea un archivo vac�o, si el archivo existe actualiza la hora de modificaci�n. Para crear el archivo prueba1.txt en /home, seria:

```
touch /home/prueba1.txt
```

### Cd

Cd (de change directory o cambiar directorio), es como su nombre lo indica el comando que necesitar�s para acceder a una ruta distinta de la que te encuentras. Por ejemplo, si estas en el directorio `/home` y deseas acceder a `/home/ejercicios`, seria:

```
cd /home/ejercicios
```

Si est�s en `/home/ejercicios` y deseas subir un nivel (es decir ir al directorio `/home`), ejecutas:

```
cd ..


```
### Cat

Cat (de concatenar),  nos permite visualizar el contenido de un archivo de texto sin la necesidad de un editor. Para utilizarlo solo debemos mencionarlo junto al archivo que deseamos visualizar:

```
cat prueba.txt
```

### Ls

Ls (de listar), permite listar el contenido de un directorio o fichero. La sintaxis es:

```
ls /home/directorio
```

El comando `ls` tiene varias opciones que permiten organizar la salida, lo que resulta particularmente �til cuando es muy grande. Por ejemplo, puedes usar **-a** para mostrar los archivos ocultos y **-l** para mostrar los usuarios, permisos y la fecha de los archivos. As� como para todos los comandos Linux, estas opciones pueden combinarse, terminando en algo como:

```
ls -la /home/directorio

```
### Mv

Mv (de move o mover), mueve un archivo a una ruta espec�fica, y a diferencia de cp, lo elimina del origen finalizada la operaci�n. Por ejemplo:

```
mv /home/prueba.txt /home/respaldos/prueba2.txt

```

Al igual que `cp`, en la sintaxis se especifica primero el origen y luego el destino. Si indicamos un nombre de destino diferente, mv mover� el archivo o directorio con el nuevo nombre.


## Mkdir

Mkdir (de make directory o crear directorio), crea un directorio nuevo tomando en cuenta la ubicaci�n actual. Por ejemplo, si estas en `/home` y deseas crear el directorio ejercicios, ser�a:

```
mkdir /home/ejercicios
```

Mkdir tiene una opci�n bastante �til que permite crear un �rbol de directorios completo que no existe. Para eso usamos la opci�n **-p**:

```
mkdir -p /home/ejercicios/prueba/uno/dos/tres
```

### Rm

Rm (de remove o remover), es el comando necesario para borrar un archivo o directorio. Para borrar el archivo prueba.txt ubicado en /home, ejecutamos:

```
 rm /home/prueba.txt
```

Este comando tambi�n presenta varias opciones. La opci�n **-r** borra todos los archivos y directorios de forma recursiva. Por otra parte, **-f** borra todo sin pedir confirmaci�n. Estas opciones pueden combinarse causando un borrado recursivo y sin confirmaci�n del directorio que se especifique. Para realizar esto en el directorio respaldos ubicado en el /home, usamos:

```
rm -fr /home/respaldos
```

### Clear

Clear (de limpiar), es un sencillo comando que limpiara nuestra terminal por completo dej�ndola como reci�n abierta. Para ello ejecutamos:

```
clear
```