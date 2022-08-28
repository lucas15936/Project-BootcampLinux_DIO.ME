#!/bin/bash

echo "Execução do Script para o projeto do bootcamp Linux da DIO.ME..."
echo "Criando diretórios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo "Criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Criando usuários..."

useradd carlos -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -1 123)
useradd maria -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -1 123)
useradd joao -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -1 123)
useradd debora -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -1 123)
useradd sebastiana -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -1 123)
useradd roberto -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -1 123)
useradd josefina -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -1 123)
useradd amanda -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -1 123)
useradd rogerio -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -1 123)
echo "Definindo que os usuários alterem a senha no primeiro login..."
passwd carlos -e
passwd maria -e
passwd joao -e
passwd debora -e
passwd sebastiana -e
passwd roberto -e
passwd josefina -e
passwd amanda -e
passwd rogerio -e

echo "Alterando o dono de cada grupo..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Alterando permissões para cada diretório criado..."

chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

echo "Script finalizado"
