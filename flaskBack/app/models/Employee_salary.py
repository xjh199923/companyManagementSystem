from app.utils.database import db

class Employee_salary(db.Model):
    employee_salary_id = db.Column(db.String(20),unique=True,primary_key=True) #工资编号
    employee_id = db.Column(db.String(20)) #员工编号
    project_number = db.Column(db.Integer)#项目个数
    attendance = db.Column(db.Float)#出勤率
    salary = db.Column(db.Float)#员工总工资
    date = db.Column(db.DateTime) #日期

    def __init__(self, employee_salary_id, employee_id, project_number,attendance
                 ,salary ,date):
        self.employee_salary_id = employee_salary_id
        self.employee_id = employee_id
        self.project_number = project_number
        self.attendance = attendance
        self.salary = salary
        self.date = date

    def __str__(self):
        return "Employee_salary(employee_salary_id='%s')" % self.employee_salary_id
