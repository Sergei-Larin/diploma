import os
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_login import LoginManager
from flask_migrate import Migrate


app = Flask(__name__)
app.config.from_object(os.environ['APP_SETTINGS'])

db = SQLAlchemy(app)
manager = LoginManager(app)
migrate = Migrate(app, db)

from application.models import *
from application.ui.views import ui

app.register_blueprint(ui)


if __name__ == '__main__':
    app.run()
