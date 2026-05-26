groupadd p1c1_2026_g1
useradd -G p1c1_2026_g1 p1c1_2026_u1
echo "p1c1_2026_u1:clave1" | chpasswdd
mkdir -p /datos

chown -R p1c1_2026_u1:p1c1_2026_g1 /datos

chmod -R 750 /datos

su -c "whoami > /datos/validar1.txt" p1c1_2026_u1
