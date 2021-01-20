from app.utils.database import db

class Project_salary(db.Model):
    project_salary_id = db.Column(db.String(20),unique=True,primary_key=True)#工资编号
    project_id = db.Column(db.String(20))#项目编号
    project_name = db.Column(db.String(20))#项目名称
    customer_id = db.Column(db.String(20)) #客户编号
    employee_id  = db.Column(db.String(20))  # 员工编号
    quality = db.Column(db.Float) # 员工完成该项目的质量，提成=该项目金额/员工的个数*质量
    project_money = db.Column(db.Float)# 项目金额
    employee_money = db.Column(db.Float)#员工提成

    def __init__(self,project_salary_id, project_id, project_name,
                 customer_id, employee_id, quality, project_money,employee_money):
        self.project_salary_id = project_salary_id
        self.project_id = project_id
        self.project_name = project_name
        self.customer_id = customer_id
        self.employee_id = employee_id
        self.quality = quality
        self.project_money = project_money
        self.employee_money = employee_money

    def __str__(self):
        return "Project_salary(project_salary_id='%s')" % self.project_salary_id
