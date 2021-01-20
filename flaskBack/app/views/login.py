from app.factory import *

login = Blueprint("login", __name__)

@login.route('/authenticate/',methods=['post','get'])
def authenticate():
    userdata = request.get_json(silent=True)
    print(userdata)
    status = {}
    user = Users.query.filter_by(username=userdata['username']).first()
    if user and user.password == userdata['password']:
        status['level'] = user.root  #用户存在返回用户权限等级
    else:
        status['level'] = 0    #用户不存在返回0

    return jsonify(status)