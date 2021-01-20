from app.utils.database import db

class Employee(db.Model):
    employee_id = db.Column(db.String(20),unique=True,primary_key=True) #员工ID
    employee_name = db.Column(db.String(20))#员工姓名
    employee_phone = db.Column(db.String(20)) # 联系方式
    supervisor_id = db.Column(db.String(20)) #主管部门编号，属于哪个部门或属于哪个主管
    employee_rank = db.Column(db.String(20))   #分新手和老手
    position = db.Column(db.String(20)) #员工职位,1为超级管理员，2为主管，3为员工

    def __init__(self, employee_id,employee_name, employee_phone,
                 supervisor_id,employee_rank,position):
        self.employee_id = employee_id
        self.employee_name =employee_name
        self.employee_phone = employee_phone
        self.supervisor_id = supervisor_id
        self.employee_rank = employee_rank
        self.position = position

    def __str__(self):
        return "Employee(employee_id='%s')" % self.employee_id
