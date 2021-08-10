#!/usr/bin/env sh

# остановить публикацию при ошибках
set -e

# сборка
npm run build

# переход в каталог сборки
cd dist

# если вы публикуете на пользовательский домен
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# если вы публикуете по адресу https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# если вы публикуете по адресу https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:N1neTa1ls/vue-modal-calc.git master:gh-pages

cd -

# создать ssh ключ https://docs.github.com/en/github/authenticating-to-github/troubleshooting-ssh/error-permission-denied-publickey
#https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account#further-reading
#Если ошибка Could not open a connection to your authentication agent
#eval $(ssh-agent)
#Видос https://www.youtube.com/watch?v=6Xq0ALFs6Jw
