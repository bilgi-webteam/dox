# GIT Konfigürasyon Dosyası

Örnek [gitconfig](config/gitconfig) dosyasını `$HOME` dizini altına kopyalayın. Dosya adı `.gitconfig` olmalı.

    cp gitconfig ~/.gitconfig

Lütfen kullanıcı bilgilerinizi de düzenleyin:

    [user]
      name = ADINIZ SOYADINIZ
      email = EPOSTA@ADRESİNİZ

# NGINX SSL Konfigürasyonu

Örnek [nginx](config/nginx.conf) dosyası `/etc/nginx/nginx.conf` içine eklenecektir. `/path/to/cert/` yerine sertifikaların bulunduğu path'i yazın.

# NGINX Site Konfigürasyonu

Örnek [nginx](config/nginx-site.conf) SSL destekli **statik** sayfa sunmak içindir.
