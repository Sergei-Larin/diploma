# diploma project
1. For create infrastructure in AWS read iac/README.md file

2. For local run application :
    * Run pgsql server and get IP, DB_USER, DB_PASS, DB_NAME
    * build app:
    ```docker
      docker build -t app:latest -f Dockerfile 
    ```
    * Run app change IP, DB_USER, DB_PASS, DB_NAME:
    ```
      docker run -it \
      -e FLASK_ENV=development \
      -e DATABASE_URL=postgresql://DB_USER:DB_PASS@IP/DB_NAME \
      -e APP_SETTINGS=application.config.DevelopmentConfig \
      -e SECRET_KEY=3cbb07a09a53423eadc598d6adf90fb7 \
      -e VERSION=v.1.0 \
      -p 5000:5000 \
      app:latest
    ```
    * For migration db use inside app container:
    ```python
    python manage.py db migrate
    python manage.py db upgrade
    ```
    * Open http://localhost:5000
