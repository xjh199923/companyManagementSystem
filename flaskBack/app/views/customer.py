from app.factory import *

customer = Blueprint("customer", __name__)

@customer.route('/info/pageIndex<pageCode>',methods=['post', 'get'])
def customerInfo(pageCode):
    data = request.get_json(silent=True)
    sql = ""
    if int(data['search']) == 0:
        sql = "select * from customer"
    elif int(data['search']) == 1:
        sql = "select * from customer where customer_rank='1'"
    elif int(data['search']) == 2:
        sql = "select * from customer where customer_rank='2'"
    elif int(data['search']) == 3:
        sql = "select * from customer where customer_rank='3'"

    pageCode = int(pageCode) - 1
    tmplist = []
    allJson = {}  # 所有信息，包括记录数json
    tmpInfo = db.session.execute(sql).fetchall()
    for record in tmpInfo:
        customerDic = {}
        customerDic['customer_id'] = record.customer_id
        customerDic['customer_name'] = record.customer_name
        customerDic['customer_rank'] = record.customer_rank
        if record.customer_rank == '1':
            customerDic['customer_rank'] = '一级客户'
        elif record.customer_rank == '2':
            customerDic['customer_rank'] = '二级客户'
        else:
            customerDic['customer_rank'] = '三级客户'
        customerDic['customer_phone'] = record.customer_phone
        customerDic['customer_qq'] = record.customer_qq
        customerDic['customer_email'] = record.customer_email
        tmplist.append(customerDic)
    allJson["infoLen"] = len(tmplist)
    allJson["infoList"] = tmplist[10*pageCode:10*(pageCode+1)]
    return jsonify(allJson)

customer_add = Blueprint("customer_add", __name__)
@customer_add.route('/add', methods=['post', 'get'])
def customerAdd():
    data = request.get_json(silent=True)
    print(data)
    try:
        customer = Customer(customer_id=data['customer_id'],customer_name=data['customer_name'],
                            customer_phone=data['customer_phone'], customer_rank=data['customer_rank'],
                            customer_qq=data['customer_qq'], customer_email=data['customer_email'])
        db.session.add(customer)
        db.session.commit()
    except Exception as e:
        db.session.rollback()
    return jsonify(True)


customer_delete = Blueprint("customer_delete", __name__)
@customer_delete.route('/delete', methods=['post', 'get'])
def customerDelete():
    data = request.get_json(silent=True)
    print(data)
    try:
        customer = Customer.query.filter_by(customer_id=data['customer_id']).first()
        db.session.delete(customer)
        db.session.commit()
    except Exception as e:
        db.session.rollback()
    return jsonify(True)

customer_modify = Blueprint("customer_modify", __name__)
@customer_modify.route('/modify', methods=['post', 'get'])
def customerModify():
    data = request.get_json(silent=True)
    print(data)
    try:
        delecustomer = Customer.query.filter_by(customer_id=data['customer_id']).first()
        db.session.delete(delecustomer)
        if data['customer_rank'] == '一级客户':
            data['customer_rank'] = '1'
        elif data['customer_rank'] == '二级客户':
            data['customer_rank'] = '2'
        elif data['customer_rank'] == '三级客户':
            data['customer_rank'] = '3'
        customer = Customer(customer_id=data['customer_id'], customer_name=data['customer_name'],
                            customer_phone=data['customer_phone'], customer_rank=data['customer_rank'],
                            customer_qq=data['customer_qq'], customer_email=data['customer_email'])
        db.session.add(customer)
        db.session.commit()
    except Exception as e:
        db.session.rollback()
    return jsonify(True)