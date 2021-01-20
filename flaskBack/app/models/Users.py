from app.utils.database import db

class Users(db.Model):
    username = db.Column(db.String(20),unique=True,primary_key=True)
    password = db.Column(db.String(20))
    root = db.Column(db.String(2))

    def __init__(self, username, password, root):
        self.username = username
        self.password = password
        self.root = root

    def __str__(self):
        return "Users(username='%s')" % self.username