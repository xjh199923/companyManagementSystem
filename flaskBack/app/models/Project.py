from app.utils.database import db

class Project(db.Model):
    project_id = db.Column(db.String(20),unique=True,primary_key=True) #项目Id
    project_name = db.Column(db.String(20),nullable=False) #项目名称
    customer_id = db.Column(db.String(20), nullable=False) #客户ID
    start_date = db.Column(db.DateTime)  #开始日期
    end_date = db.Column(db.DateTime)    #结束日期
    project_type = db.Column(db.String(20))  #项目类型
    project_money = db.Column(db.Float)   #项目金额
    status = db.Column(db.Integer) #项目状态

    def __init__(self, project_id, project_name, customer_id, start_date, end_date,
                 project_type, project_money,status ):
        self.project_id = project_id
        self.project_name = project_name
        self.customer_id = customer_id
        self.start_date = start_date
        self.end_date = end_date
        self.project_type = project_type
        self.project_money = project_money
        self.status = status

    def __str__(self):
        return "Project(project_name='%s')" % self.project_name
