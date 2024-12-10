cd repogit/
ls -la
find / -type d 2>/dev/null | grep -i "RTA_Examen_T"
find / -type d 2>/dev/null | grep "RTA_Examen"
find / -type d 2>/dev/null | grep "Examen"
find / -type d 2>/dev/null | grep "Punto"
ls -l
cd UTNFRA_SO_2do_Parcial_gil/
ls -l
mkdir RTA_Examen_T(20241210)
mkdir RTA_Examen_T_20241210
ls -l
cd RTA_Examen_T_20241210/
touch Punto_A.sh
ls -la
touch Punto_B.sh
touch Punto_C.sh
ls -la
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
vim Punto_A.sh 
lsblk
df -h
sudo chmod 755 Punto_A.sh 
ls -l
sudo ./Punto_A.sh 
git add .
git status
git commit -m "Punto A - Resolucion"
git 
git config --global user.email "giltomasantonio03@gmail.com"
git config --global user.name "Tomas-Gil17"
git status
git commit -m "Punto A - Resolucion"
git push
cd ..
ls -l
UTN-FRA_SO_Examenes/
cd -l
ls -l
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd bash_script/
ls -l
pwd
cat Lista_Usuarios.txt 
cd ..
ls -l
cd UTNFRA_SO_2do_Parcial_gil/
cd RTA_Examen_T_20241210/
vim Punto_B.sh 
sudo chmod 755 ./Punto_B.sh 
sudo ./Punto_B.sh 
vim Punto_B.sh 
ls -la
sudo ./Punto_B.sh 
cat etc/group
cat /etc/group
cat /etc/passwd
vim Punto_B.sh 
cd ..
ls -l
cd UTNFRA_SO_2do_Parcial_gil/
ls -la
cd RTA_Examen_T_20241210/
cd /home/tomasgil/repogit/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cd /home/tomasgil/repogit/UTN-FRA_SO_Examenes/202406/bash_script
cat Lista_Usuarios.txt 
vim Punto_B.sh 
cd
cd repogit/
cd UTNFRA_SO_2do_Parcial_gil/
ls -l
cd RTA_Examen_T_20241210/
vim Punto_B.sh 
sudo ./Punto_B.sh 
cat /etc/passwd
vim Punto_B.sh 
sudo ./Punto_B.sh 
vim Punto_B.sh 
sudo ./Punto_B.sh 
vim Punto_B.sh 
sudo ./Punto_B.sh 
clear
cat /etc/passwd
git add .
git status
git commit -m "Punto B - Resuelto"
git push
vim Punto_C.sh 
sudo ./Punto_C.sh
sudo ./Punto_C.sh 
sudo chmod 755 ./Punto_C.sh 
sudo ./Punto_C.sh 
vim Punto_C.sh 
docker system prune -a --volumes
sudo docker system prune -a --volumes
docker build -t tomasgil17/web2-gil:latest .
docker push tomasgil17/web2-gil:latest
sudo docker push tomasgil17/web2-gil:latest
sudo ./Punto_C.sh 
vim Punto_C.sh 
sudo ./Punto_C.sh 
vim Punto_C.sh 
sudo ./Punto_C.sh 
vim Punto_C.sh 
sudo ./Punto_C.sh 
sudo apt get update
vim Punto_C.sh 
pwd
vim Punto_C.sh 
cd ..
history -a
