CREATE_MIGRATION(){
echo '////////////////////'
echo 'Criando as Migrates '
echo '////////////////////'
# python manage.py makemigrations tasks
python manage.py makemigrations
sleep 1
echo '2s'
sleep 1
echo '1s'
echo '//////////////////////////'
echo 'Criando as Tabelas SQLight'
echo '//////////////////////////'
python manage.py migrate
}


MAIN(){
CREATE_MIGRATION
}

MAIN

