#!/bin/bash

cd /home/athos.lima/curso_devops/diretorios

echo "Criando diretorios..."

mkdir publico adm ven sec 

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios..."

useradd	carlos -m
useradd debora -m
useradd josefina -m

echo "incluindo usuarios aos grupos..."

usermod -G GRP_ADM carlos
usermod -G GRP_VEN debora
usermod -G GRP_SEC josefina

echo "Escolhesndo proprietarios dos diretorios..."

chown root:root /home/athos.lima/curso_devops/diretorios/publico
chown root:GRP_ADM /home/athos.lima/curso_devops/diretorios/adm
chown root:GRP_VEN /home/athos.lima/curso_devops/diretorios/ven
chown root:GRP_SEC /home/athos.lima/curso_devops/diretorios/sec

echo "Dando permissoes..."

chmod 777 publico
chmod 770 adm
chmod 770 ven
chmod 770 sec


