from app.factory import *

project_salary = Blueprint("project_salary", __name__)

@project_salary.route('/info/pageIndex<pageCode>',methods=['post','get'])
def project_salaryInfo(pageCode):
    pageCode = int(pageCode) - 1
    tmplist = []
    allJson = {}  # 所有信息，包括记录数json
    tmpInfo = db.session.execute(" SELECT * FROM project_salary ").fetchall()
    for record in tmpInfo:
        project_salaryDic = {}
        project_salaryDic['project_salary_id'] = record.project_salary_id
        project_salaryDic['project_id'] = record.project_id
        project_salaryDic['project_name'] = record.project_name
        project_salaryDic['customer_id'] = record.customer_id
        project_salaryDic['employee_id'] = record.employee_id
        project_salaryDic['quality'] = record.quality
        project_salaryDic['project_money'] = record.project_money
        project_salaryDic['employee_money'] = record.employee_money
        tmplist.append(project_salaryDic)
    allJson["infoLen"] = len(tmplist)
    allJson["infoList"] = tmplist[10*pageCode:10*(pageCode+1)]
    return jsonify(allJson)


project_salary_add = Blueprint("project_salary_add", __name__)
@project_salary_add.route('/add', methods=['post', 'get'])
def project_salaryAdd():
    data = request.get_json(silent=True)
    print(data)
    try:
        employee_salary = Project_salary(project_salary_id=data['project_salary_id'],project_id=data['project_id'],
                            project_name=data['project_name'], customer_id=data['customer_id'],
                            employee_id=data['employee_id'], quality=data['quality'])
        db.session.add(employee_salary)
        db.session.commit()
    except Exception as e:
        db.session.rollback()
    return jsonify(True)


project_salary_delete = Blueprint("project_salary_delete", __name__)
@project_salary_delete.route('/delete', methods=['post', 'get'])
def project_salaryDelete():
    data = request.get_json(silent=True)
    print(data)

    return jsonify(True)

project_salary_modify = Blueprint("project_salary_modify", __name__)
@project_salary_modify.route('/modify', methods=['post', 'get'])
def project_salaryModify():
    data = request.get_json(silent=True)
    print(data)

    return jsonify(True)