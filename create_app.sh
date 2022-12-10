# Bootstrap grid
# https://www.youtube.com/watch?v=VAgZE2yQNHY

# https://www.youtube.com/watch?v=NAstsS4rVrY&list=PLnDvRpP8BnewqnMzRnBT5LeTpld5bMvsj&index=3
# https://www.youtube.com/watch?v=6EpHpUoBQDc&list=PLnDvRpP8BnewqnMzRnBT5LeTpld5bMvsj&index=4
# https://www.youtube.com/watch?v=gBnLE2rFpqk&list=PLnDvRpP8BnewqnMzRnBT5LeTpld5bMvsj&index=5
# https://www.youtube.com/watch?v=zKHxYWIjj3U&list=PLnDvRpP8BnewqnMzRnBT5LeTpld5bMvsj&index=6
# https://www.youtube.com/watch?v=biuNVj1PuGs&list=PLnDvRpP8BnewqnMzRnBT5LeTpld5bMvsj&index=7
echo --------------------------------------------------------
echo -e "\033[31m Deseja Criar um App Djago? \033[m"
read -p "s (SIM ) e n (NÃO) -->> " CONFIRM
echo --------------------------------------------------------
if [ "$CONFIRM" = s ];then

read -p 'Digite o número de app a serem criados -->> ' NUMEROS_APPS

START=1
END=$NUMEROS_APPS

for (( c=$START; c<=$END; c++ ))
do
    read -p 'Digite o nome do App Django -->> ' NAME_APP_DJANGO
    python manage.py startapp $NAME_APP_DJANGO
    sleep 1
    echo '************************'
    echo 'Entrando na pasta do App'
    echo '************************'
    cd $NAME_APP_DJANGO
    sleep 1
    echo '*****************'
    echo 'Criando forms.py'
    echo '*****************'
    touch forms.py
    sleep 1
    echo '************************'
    echo 'Criando o arquivo urls.py'
    echo '************************'
    touch urls.py
    sleep 1
    echo '****************************'
    echo 'Adicionando conteudo urls.py'
    echo '****************************'

cat << EOF >> urls.py
from django.urls import path
from .views import here_name_view
urlpatterns = [path("", here_name_view, name="here_name_view")]
EOF

    sleep 1
    echo '**************************'
    echo 'Excluindo arquivo views.py'
    echo '**************************'
    rm -rf views.py
    sleep 1
    echo '**************************'
    echo 'Criando arquivo views.py'
    echo '**************************'
    touch views.py
    sleep 1
    echo '******************************'
    echo 'Adicionando conteudo views.py'
    echo '******************************'
cat << EOF >> views.py
from django.shortcuts import render
from django.http import HttpResponse
def tasksList(request):
    return render(request, "nome_pasta_dentro_template/example.html")
EOF

    sleep 1
    echo '**************************'
    echo 'Excluindo arquivo admin.py'
    echo '**************************'
    rm -rf admin.py
    sleep 1
    echo '**************************'
    echo 'Criando arquivo admin.py'
    echo '**************************'
    touch admin.py
    sleep 1
    echo '******************************'
    echo 'Adicionando conteudo admin.py'
    echo '******************************'
cat << EOF >> admin.py
from django.contrib import admin
from .models import User
# Register your models here.
admin.site.register(User)
EOF

 sleep 1
    echo '**************************'
    echo 'Excluindo arquivo models.py'
    echo '**************************'
    rm -rf models.py
    sleep 1
    echo '**************************'
    echo 'Criando arquivo models.py'
    echo '**************************'
    touch models.py
    sleep 1
    echo '******************************'
    echo 'Adicionando conteudo models.py'
    echo '******************************'
cat << EOF >> models.py
from django.db import models
class Xsingular(models.Model):
    exemplo = models.CharField("exemplo", max_length=50)
def __str__(self):
    return f"Exemplo: {self.exemplo}\n"
EOF




    mkdir templates
    cd templates
    mkdir $NAME_APP_DJANGO
    cd $NAME_APP_DJANGO
    touch index.html

cat << EOF >> index.html
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Documento Exemplo</title>
</head>
<body>
  <h1>EXAMPLE PARA ALTERAÇÃO</h1>
</body>
</html>
EOF
    cd ..
    cd ..
    mkdir static
    cd static
    mkdir css
    mkdir img
    mkdir js
    cd css
    touch styles.css
    cd ..
    cd js
    touch scripts.js
    cd ..
    cd ..
    cd templates
    cd $NAME_APP_DJANGO
    rm -rf index.html
    touch base.html

cat << EOF >> base.html
{% load static %}

<!DOCTYPE html>
<html lang="pt_BR">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>{% block title %}{% endblock %}</title>
  <!-- CSS only -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
    integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
    integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

  <link rel="stylesheet" href="{% static 'css/styles.css'%}">

</head>

<body>

  <!--Linha-->
  <div class="row bg-light"
    style="width:100%; height: 90px; border-bottom: 10px solid #563D7C; border-radius: 12px; border-top: 7px solid #563D7C;">
    <!--Coluna-->
    <div class="col-6 ">
      <div class="row w-100 m-0 p-0"
        style="width:100%; height:80px; display: flex; align-items: center; justify-content: center;">
        <div class="col-3"> Imagem Logo 1 </div>
        <div class="col-3"> Imagem Logo 2 </div>
        <div class="col-3"> Imagem Logo 3 </div>
        <div class="col-3"> Imagem Logo 4 </div>
      </div>
    </div>
    <!--Coluna-->
    <div class="col-6 d-flex align-items-center justify-content-center">
      <div class="row w-100 m-0 p-0">

        <div class="col-3 text-center">
          <a class="nav-link" href="/">
            <span class="color_default-links p-2" style="font-size:32px; font-weight: 700; letter-spacing: 2px;">
              Tasks
            </span>
          </a>
        </div>

        <div class="col-3 text-center">
          <a class="nav-link" href="user/">
            <span class="color_default-links p-2" style="font-size:32px; font-weight: 700;letter-spacing: 2px;">
              Users
            </span>
          </a>
        </div>

        <div class="col-3 text-center">
          <a class="nav-link" href="about/">
            <span class="color_default-links p-2" style="font-size:32px; font-weight: 700;letter-spacing: 2px;">
              About
            </span>
          </a>
        </div>


        <div class="col-3 text-center">
          <a class="nav-link" href="#">
            <span class="color_default-links p-2" style="font-size:32px; font-weight: 700;letter-spacing: 2px;">
              Contact
            </span>
          </a>
        </div>

      </div>
    </div>
  </div>

  </div>

  {% block content %}{% endblock %}

  <div class="row w-100 p-0 m-0 d-flex align-items-center justify-content-center"
    style="height:80px; background-color: #563D7C; color: whitesmoke;">
    <div class="col-4 text-center">
      <p class="h5" style="letter-spacing:2px; font-weight: 700;">© 2022 Copyright:
        Dev:T Software</p>
      <span class="h5" style="font-weight:700; letter-spacing: 2px;">Dev:T
        I9vando.com</span>
    </div>
  </div>

  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"
    integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+"
    crossorigin="anonymous"></script>
</body>

</html>


EOF

done

echo
echo "Fim execução comando cria App!"
else
echo 'exit in 3s'
sleep 1
echo 'exit in 2s'
sleep 1
echo 'exit in 1s'
sleep 1
echo 'The End Execution'
fi
