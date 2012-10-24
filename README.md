# Creación del usuario

Si es la primera vez que restauramos la base de datos desde un fichero de respaldo, tenemos que crear un usuario específico para ella. Como usuario root de mysql tenemos que hacer lo siguiente:

    mysql> grant usage on *.* to [usuario]@localhost identified by '[contraseña]';
    mysql> grant all privileges on [nombre_bbdd].* to [usuario]@localhost;
