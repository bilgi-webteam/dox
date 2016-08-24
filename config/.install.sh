echo "Yeni sitenin adresini yazın (xxx.bilgi.edu.tr olarak): "
read NEW_REPO

# Clone new repo
git clone git@github.com:bilgi-webteam/django-base.git $NEW_REPO
cd $NEW_REPO

# set new urls
git remote set-url origin git@github.com:bilgi-webteam/$NEW_REPO
git remote add upstream git@github.com:bilgi-webteam/django-base.git

# env işleri
mkvirtualenv $NEW_REPO &&
POSTACTIVATE=$HOME/.virtualenvs/${PWD##*/}/bin/postactivate &&
echo "cd `pwd`" >> $POSTACTIVATE &&
echo "export DJANGO_SETTINGS_MODULE=config.settings.local" >> $POSTACTIVATE &&
source $POSTACTIVATE &&

pip install -r requirements.pip &&

cd project/

sed -i -e 's/new-repo/'"$NEW_REPO"'/g' config/settings/common.py &&

npm install &&
bower install &&

python manage.py migrate &&
python manage.py loaddata fixtures.json

