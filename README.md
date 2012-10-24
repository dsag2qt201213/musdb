# Creación del usuario

Si es la primera vez que restauramos la base de datos desde un fichero de respaldo, tenemos que crear un usuario específico para ella. Como usuario root de mysql tenemos que hacer lo siguiente:

    mysql> grant usage on *.* to [usuario]@localhost identified by '[contraseña]';
    mysql> grant all privileges on [nombre_bbdd].* to [usuario]@localhost;

Donde [usuario] es el identificador para el nuevo usuario, [contraseña] su contraseña y [nombre_bbdd] el nombre que le daremos a la base de datos que importaremos desde el respaldo.

# Restauración de la base de datos

Si es la primera vez que hacemos el respaldo, tenemos que crear la base de datos de nombre [nombre_bbdd] a la que otorgamos al [usuario] todos los privilegios. 

Entramos a mysql con el usuario creado en el paso anterior:

    $ mysql -u [usuario] -p
    Enter password: [contraseña]

y creamos la base de datos:

    mysql> create database [nombre_bbdd];
    mysql> exit;

Ahora restauraremos la base de datos desde uno de los dos ficheros de respaldo:

  * musdb-no-data.sql - para recuperar únicamente la estructura de la base de datos.
  * musdb-with-data.sql - para recuperar la estrucutura de la base de datos con registros.

Desde la shell:

    $ mysql -u [usuario] -p [nombre_bbdd] < [fichero_respaldo]
    Enter password: [contraseña]

