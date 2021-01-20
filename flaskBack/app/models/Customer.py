from app.utils.database import db

class Customer(db.Model):
    customer_id = db.Column(db.String(20),unique=True,primary_key=True) #客户ID
    customer_name = db.Column(db.String(20))  #客户姓名
    customer_rank = db.Column(db.String(20)) #客户等级
    customer_phone = db.Column(db.String(20))  #客户电话
    customer_qq = db.Column(db.String(20))  #客户qq
    customer_email = db.Column(db.String(30))  #客户邮箱

    def __init__(self,customer_id, customer_name, customer_rank,
                 customer_phone,customer_qq,customer_email):
        self.customer_id = customer_id
        self.customer_name = customer_name
        self.customer_rank = customer_rank
        self.customer_phone = customer_phone
        self.customer_qq = customer_qq
        self.customer_email = customer_email

    def __str__(self):
        return "Customer(customer_name='%s')" % self.customer_name
