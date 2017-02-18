#!/bin/bash


echo "<!DOCTYPE html>"
echo "<html>"
echo '<meta name="viewport" content="width=device-width, initial-scale=1">'
echo '<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">'
echo '<html>'
echo '<head>'
echo '<link rel="apple-touch-icon" href="http://download.seaicons.com/icons/hopstarter/scrap/256/Globe-icon.png"/>'
echo '<link rel="shotcurt icon" href="http://download.seaicons.com/icons/hopstarter/scrap/256/Globe-icon.png"/>'
echo '<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />'
echo '<title>Anonymous SSH</title>'
echo '<link rel="stylesheet" href="assets2/css/bootstrap.min.css" type="text/css"  />'
echo '<link rel="stylesheet" href="style.css" type="text/css" />'
echo '</head>'
echo '<body>'
echo '<body background="./imagem/fundo.png">'
echo '<div class="container">'
ip=$(hostname -i)

contar=$(grep $1 contas.txt | wc -l)
if [ "$contar" -ge "1" ]
then
echo "<div class='container'>"

echo	"<div id='login-form'>"
    
echo    	"<div class='col-md-12'>"
        
echo        	"<div class='form-group'>"
            	"<p class='p'>CRIAR CONTA GRÁTIS<p/>"
echo            "</div>"
echo "<p class='p'>USUÁRIO EXISTENTE!<p/>"
echo '<a href="index.php" class="btn btn-block btn-default" name="btn-login">Voltar</button>'
exit 0
fi

limite=$(cat contas.txt | wc -l)

if [ "$limite" -ge "10" ]
then
echo "<div class='container'>"

echo	"<div id='login-form'>"
    
echo    	"<div class='col-md-12'>"
        
echo        	"<div class='form-group'>"
            	"<p class='p'>CRIAR CONTA GRÁTIS<p/>"
echo            "</div>"
echo "<p class='p'>LIMITE DE CONTAS EXECIDO!<p/>"
echo '<a href="index.php" class="btn btn-block btn-default" name="btn-login">Voltar</button>'
exit 0
fi


validade=$(date '+%C%y/%m/%d' -d " +72 hours")
validadebr=$(date '+%d/%m/%C%y' -d " +72 hours")


sudo useradd -M -s /bin/false $1 -e $validade

(echo $2 ; echo $2) | passwd $1

echo "$1" >> contas.txt
echo '	<div id="login-form">'
    
echo '    	<div class="col-md-12">'
        
echo	'<div id="caixa">CONTA CRIADA COM SUCESSO!<h5><center>Seu usuário tem validade de 2 dias. </center></h5>'
echo "<div class='h5'><center>Servidor: 174.138.79.219</center></h5>"
echo "<div class='h5'><center>Usuário: $1</center></h5>"
echo "<div class='h5'><center>Senha: $2</center></h5>"
echo "<div class='h5'><center>Proxy: 174.138.79.219: 80, 8080 e 3128</center></h5>"
echo '	</div></div></div></div></div>'
echo '		<hr>'
echo '            	<a href="https://t.me/vlenin" class="btn btn-block btn-default" name="btn-login">Desenvolvedor</button>'
echo '<a href="index.php" class="btn btn-block btn-default" name="btn-login">Voltar</button>'
