from app.factory import *

tatistical = Blueprint("tatistical", __name__)

@tatistical.route('/tatisticalData/',methods=['get'])
def tatisticalData():
    Dic = {}
    for i in range(1,4):
        sql = "select COUNT(employee_id) AS numData from employee where supervisor_id='%s'" %i
        tmpInfo = db.session.execute(sql).fetchall()
        level = 'level'+str(i)
        for item in tmpInfo:
            Dic[level] = item.numData
    return jsonify(Dic)