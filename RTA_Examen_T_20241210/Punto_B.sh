REFERENCIA_USUARIO=$1

LISTA=/home/tomasgil/repogit/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt

USUARIOS=$2

CONTRASENIAS=$(sudo grep "REFERENCIA_USUARIO" /etc/shadow | awk -F ':' '{print $2}')

echo "Asignando usuarios, grupos y rutas"
USUARIO1=$(grep Prog1 $LISTA | awk -F ',' '{print $1}')
USUARIO2=$(grep Prog2 $LISTA | awk -F ',' '{print $1}')
USUARIO3=$(grep Test1 $LISTA | awk -F ',' '{print $1}')
USUARIO4=$(grep Supervisor $LISTA | awk -F ',' '{print $1}')

GRUPO_PROGRA=$(grep Prog1 $LISTA | awk -F ',' '{print $2}')
GRUPO_TESTERS=$(grep Test1 $LISTA | awk -F ',' '{print $2}')
GRUPO_SUPERV=$(grep Supervisor $LISTA | awk -F ',' '{print $2}')

RUTA_USUARIO1=$(grep Prog1 $LISTA | awk -F ',' '{print $3}')
RUTA_USUARIO2=$(grep Prog2 $LISTA | awk -F ',' '{print $3}')
RUTA_USUARIO3=$(grep Test1 $LISTA | awk -F ',' '{print $3}')
RUTA_USUARIO4=$(grep Supervisor $LISTA | awk -F ',' '{print $3}')

echo "Creando grupos"
sudo groupadd $GRUPO_PROGRA
sudo groupadd $GRUPO_TESTERS
sudo groupadd $GRUPO_SUPERV

echo "Asignando usuarios"
sudo useradd -m -s /bin/bash -c "User Prog1" -G $GRUPO_PROGRA -p "$CONTRASENIAS" -d "$RUTA_USUARIO1" $USUARIO1
sudo useradd -m -s /bin/bash -c "User Prog2" -G $GRUPO_PROGRA -p "$CONTRASENIAS" -d "$RUTA_USUARIO2" $USUARIO2
sudo useradd -m -s /bin/bash -c "User Test1" -G $GRUPO_TESTERS -p "$CONTRASENIAS" -d "$RUTA_USUARIO3" $USUARIO3
sudo useradd -m -s /bin/bash -c "User Supervisor" -G $GRUPO_SUPERV -p "$CONTRASENIAS" -d "$RUTA_USUARIO4" $USUARIO4

ls -l /work/

ls -l /usr/local/bin/
