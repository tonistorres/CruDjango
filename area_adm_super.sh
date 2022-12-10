
TIME(){
  sleep 1
  echo '2s'
  sleep 1
  echo '1s'
}

CREATE_SUPER_USER(){
TIME
echo '************************************************'
echo 'Criando o Super Usuário Para Área Administrativa'
echo '************************************************'
python manage.py createsuperuser
}


MAIN(){
CREATE_SUPER_USER

}

MAIN
