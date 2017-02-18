for usuario in $(cat /etc/passwd |grep -v nobody |awk -F : '$3 > 900 {print $1}')
do
kill -9 $(ps -u $usuario |awk '{print $1}')
userdel $usuario
done