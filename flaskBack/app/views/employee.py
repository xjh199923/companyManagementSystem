from app.factory import *

employee = Blueprint("employee", __name__)

@employee.route('/info/pageIndex<pageCode>',methods=['post','get'])
def employeeInfo(pageCode):
    data = request.get_json(silent=True)
    print(data)
    sql = ""
    if int(data['search']) == 0:
        sql = "select * from employee"
    elif int(data['search']) == 1:
        sql = "select * from employee where supervisor_id='1'"
    elif int(data['search']) == 2:
        sql = "select * from employee where supervisor_id='2'"
    elif int(data['search']) == 3:
        sql = "select * from employee where supervisor_id='3'"
    pageCode = int(pageCode) - 1
    tmplist = []
    allJson = {}  # 所有信息，包括记录数json
    print(sql)
    tmpInfo = db.session.execute(sql).fetchall()
    for record in tmpInfo:
        staffDic = {}
        staffDic['employee_id'] = record.employee_id
        staffDic['employee_name'] = record.employee_name
        staffDic['employee_phone'] = record.employee_phone
        if record.supervisor_id == '0':
            staffDic['supervisor_id'] = '公司'
        elif record.supervisor_id == '1':
            staffDic['supervisor_id'] = '模型部'
        elif record.supervisor_id == '2':
            staffDic['supervisor_id'] = '渲染部'
        else:
            staffDic['supervisor_id'] = '后期部'
        staffDic['employee_rank'] = record.employee_rank
        if record.position == '1':
            staffDic['position'] = '老板'
        elif record.position == '2':
            staffDic['position'] = '主管'
        else:
            staffDic['position'] = '员工'
        tmplist.append(staffDic)
    allJson["infoLen"] = len(tmplist)
    allJson["infoList"] = tmplist[10*pageCode:10*(pageCode+1)]
    return jsonify(allJson)


employee_add = Blueprint("employee_add", __name__)
@employee_add.route('/add', methods=['post', 'get'])
def employeeAdd():
    data = request.get_json(silent=True)
    print(data)
    try:
        employee = Employee(employee_id=data['employee_id'],employee_name=data['employee_name'],
                            employee_phone=data['employee_phone'], supervisor_id=data['supervisor_id'],
                            employee_rank=data['employee_rank'], position=data['position'])
        db.session.add(employee)
        db.session.commit()
    except Exception as e:
        db.session.rollback()
    return jsonify(True)


employee_delete = Blueprint("employee_delete", __name__)
@employee_delete.route('/delete', methods=['post', 'get'])
def employeeDelete():
    data = request.get_json(silent=True)
    try:
        employee = Employee.query.filter_by(employee_id=data['employee_id']).first()
        db.session.delete(employee)
        db.session.commit()
    except Exception as e:
        db.session.rollback()
    return jsonify(True)

employee_modify = Blueprint("employee_modify", __name__)
@employee_modify.route('/modify', methods=['post', 'get'])
def employeeModify():
    data = request.get_json(silent=True)
    print(data)
    try:
        delemployee = Employee.query.filter_by(employee_id=data['employee_id']).first()
        db.session.delete(delemployee)
        if data['supervisor_id'] == '公司':
            data['supervisor_id'] = '0'
        elif data['supervisor_id'] == '模型部':
            data['supervisor_id'] = '1'
        elif data['supervisor_id'] == '渲染部':
            data['supervisor_id'] = '2'
        elif data['supervisor_id'] == '后期部':
            data['supervisor_id'] = '3'
        employee = Employee(employee_id=data['employee_id'], employee_name=data['employee_name'],
                            employee_phone=data['employee_phone'], supervisor_id=data['supervisor_id'],
                            employee_rank=data['employee_rank'], position=data['position'])
        db.session.add(employee)
        db.session.commit()
    except Exception as e:
        db.session.rollback()
    return jsonify(True)




