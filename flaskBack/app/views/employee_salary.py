from app.factory import *

employee_salary = Blueprint("employee_salary", __name__)

@employee_salary.route('/info/pageIndex<pageCode>',methods=['post', 'get'])
def employee_salaryInfo(pageCode):
    pageCode = int(pageCode) - 1
    tmplist = []
    allJson = {}  # 所有信息，包括记录数json
    tmpInfo = db.session.execute(" SELECT * FROM employee_salary ").fetchall()
    for record in tmpInfo:
        employee_salarytDic = {}
        employee_salarytDic['employee_salary_id'] = record.employee_salary_id
        employee_salarytDic['employee_id'] = record.employee_id
        employee_salarytDic['project_number'] = record.project_number
        employee_salarytDic['attendance'] = record.attendance
        employee_salarytDic['salary'] = record.salary
        employee_salarytDic['date'] = record.date
        tmplist.append(employee_salarytDic)
    allJson["infoLen"] = len(tmplist)
    allJson["infoList"] = tmplist[10*pageCode:10*(pageCode+1)]
    return jsonify(allJson)

employee_salary_add = Blueprint("employee_salary_add", __name__)
@employee_salary_add.route('/add', methods=['post', 'get'])
def employee_salaryAdd():
    data = request.get_json(silent=True)
    print(data)
    try:
        employee_salary = Project_salary(customer_id=data['customer_id'],customer_name=data['customer_name'],
                            customer_phone=data['customer_phone'], customer_rank=data['customer_rank'],
                            customer_qq=data['customer_qq'], customer_email=data['customer_email'])
        db.session.add(employee_salary)
        db.session.commit()
    except Exception as e:
        db.session.rollback()
    return jsonify(True)


employee_salary_delete = Blueprint("employee_salary_delete", __name__)
@employee_salary_delete.route('/delete', methods=['post', 'get'])
def employee_salaryDelete():
    data = request.get_json(silent=True)
    print(data)

    return jsonify(True)

employee_salary_modify = Blueprint("employee_salary_modify", __name__)
@employee_salary_modify.route('/modify', methods=['post', 'get'])
def employee_salaryModify():
    data = request.get_json(silent=True)
    print(data)

    return jsonify(True)