from app.factory import *

progress = Blueprint("progress", __name__)

@progress.route('/info/pageIndex<pageCode>',methods=['post', 'get'])
def progressInfo(pageCode):
    pageCode = int(pageCode) - 1
    tmplist = []
    allJson = {}  # 所有信息，包括记录数json
    data = request.get_json(silent=True)
    print(data)
    sql = ""
    if data['data'] == 'E1001' and int(data['search']) == 3:
        sql = "select * from project"
    elif data['data'] == 'E1001' and int(data['search']) == 1:
        sql = "select * from project where status = '1'"
    elif data['data'] == 'E1001' and int(data['search']) == 0:
        sql = "select * from project where status = '0'"
    elif data['data'] != 'E1001' and int(data['search']) == 3:
        sql = "select * from project where employee_id='{}'".format(data['data'])
    elif data['data'] != 'E1001' and int(data['search']) == 1:
        sql = "select * from project where employee_id='{}' and status='1'".format(data['data'])
    elif data['data'] != 'E1001' and int(data['search']) == 0:
        sql = "select * from project where employee_id='{}' and status='0'".format(data['data'])
    tmpInfo = db.session.execute(sql).fetchall()
    for record in tmpInfo:
        progressDic = {}
        progressDic['project_id'] = record.project_id
        progressDic['project_name'] = record.project_name
        progressDic['customer_id'] = record.customer_id
        progressDic['employee_id'] = record.employee_id
        progressDic['start_date'] = record.start_date
        progressDic['status'] = record.status
        progressDic['end_date'] = record.end_date
        progressDic['project_money'] = record.project_money
        tmplist.append(progressDic)
    allJson["infoLen"] = len(tmplist)
    allJson["infoList"] = tmplist[10*pageCode:10*(pageCode+1)]
    return jsonify(allJson)

project_add = Blueprint("project_add", __name__)
@project_add.route('/add', methods=['post', 'get'])
def projectAdd():
    data = request.get_json(silent=True)
    print(data)
    try:
        project = Project(project_id=data['project_id'],project_name=data['project_name'],
                            customer_id=data['customer_id'], employee_id=data['employee_id'],
                            start_date=data['start_date'], status=data['status'],
                            end_date=data['end_date'], project_money=data['project_money'])
        db.session.add(project)
        db.session.commit()
    except Exception as e:
        db.session.rollback()
    return jsonify(True)


project_delete = Blueprint("project_delete", __name__)
@project_delete.route('/delete', methods=['post', 'get'])
def projectDelete():
    data = request.get_json(silent=True)
    print(data)

    return jsonify(True)

project_modify = Blueprint("project_modify", __name__)
@project_modify.route('/modify', methods=['post', 'get'])
def projectModify():
    data = request.get_json(silent=True)
    print(data)

    return jsonify(True)