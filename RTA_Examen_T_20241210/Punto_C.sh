#!/bin/bash
PATH_DOCKER="/home/tomasgil/repogit/UTN-FRA_SO_Examenes/202406/docker"
cd $PATH_DOCKER

cat > index.html << EOF
<div>
<h1> Sistemas Operativos - UTNFRA </h1><br>
<h2> 2do Parcial recuparatorio - Diciembre 2024 </h2><br>
<h3> Tomas Gil </h3>
<h3> División: 311 </h3>
</div>
EOF

echo "Creamos dockerfile"
cat << EOF > dockerfile
FROM nginx:latest
COPY index.html /usr/share/nginx/html/index.html
EOF

echo "Creamos la imagen"

docker build -t tomasgil17/web-gil:latest .

echo "pusheamos la imagen"

docker push tomasgil17/web-gil:latest

docker images

# se agrega el usuario al grupo docker

sudo usermod -aG docker tomasgil

# INICIAR SESION

sudo docker login -u tomasgil17

docker tag web-gil tomasgil17/web:latest

echo "Creando el archivo run.sh"
cat << EOF > run.sh
#!/bin/bash
docker run -d -p 8080:80 tomasgil17/web-gil:latest
EOF

sudo chmod 777 run.sh
sudo ./run.sh

echo "Testeamos"

sudo docker ps
