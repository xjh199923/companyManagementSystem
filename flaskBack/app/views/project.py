from app.factory import *

project = Blueprint("project", __name__)

@project.route('/info/pageIndex<pageCode>',methods=['post', 'get'])
def projectInfo(pageCode):
    pageCode = int(pageCode) - 1
    tmplist = []
    allJson = {}  # 所有信息，包括记录数json
    tmpInfo = db.session.execute(" SELECT * FROM project ").fetchall()
    for record in tmpInfo:
        projectDic = {}
        projectDic['project_id'] = record.project_id
        projectDic['project_name'] = record.project_name
        projectDic['customer_id'] = record.customer_id
        projectDic['employee_id'] = record.employee_id
        projectDic['start_date'] = record.start_date
        projectDic['status'] = record.status
        projectDic['end_date'] = record.end_date
        projectDic['project_money'] = record.project_money
        tmplist.append(projectDic)
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