MACRO TEST

---

Развернуть проект:

1. Скронировать репозиторий в рабочую директорию и перейти в папку проекта:
```shell
git clone https://github.com/nikolaychervon/macrotest.git
cd macrotest
```

2. Установить необходимые параметры окружения
```shell
# Предварительно создать .env файл от .env.example

DATABASE_HOST=macro_mysql
DATABASE_USER={}
DATABASE_PASS={}
DATABASE_NAME={}
```

2. Выполнить команду для запуска контейнеров:
```shell
make init
```

3. Выполнить команду для создания дампа таблиц и тестовых данных:
```shell
make dump-db
```
