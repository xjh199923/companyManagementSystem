import pymysql
pymysql.install_as_MySQLdb()
from app.views.login import *
from app.views.employee import *
from app.views.project import *
from app.views.customer import *
from app.views.project_salary import *
from app.views.employee_salary import *
from app.views.progress import *
from app.views.tatistical import *
app = create_app('DEVELOPMENT','config/config.yaml')
app.app_context().push()

'''
===========================
        蓝图路由注册模块
===========================
'''
app.register_blueprint(login, url_prefix='/login/')
app.register_blueprint(employee, url_prefix='/employee/')
app.register_blueprint(project, url_prefix='/project/')
app.register_blueprint(customer, url_prefix='/customer/')
app.register_blueprint(project_salary, url_prefix='/project_salary/')
app.register_blueprint(employee_salary, url_prefix='/employee_salary/')
app.register_blueprint(progress, url_prefix='/progress/')
app.register_blueprint(employee_add, url_prefix='/employee_add/')
app.register_blueprint(employee_delete, url_prefix='/employee_delete/')
app.register_blueprint(employee_modify, url_prefix='/employee_modify/')
app.register_blueprint(customer_add, url_prefix='/customer_add/')
app.register_blueprint(customer_delete, url_prefix='/customer_delete/')
app.register_blueprint(customer_modify, url_prefix='/customer_modify/')
app.register_blueprint(project_add, url_prefix='/project_add/')
app.register_blueprint(project_delete, url_prefix='/project_delete/')
app.register_blueprint(project_modify, url_prefix='/project_modify/')
app.register_blueprint(project_salary_add, url_prefix='/project_salary_add/')
app.register_blueprint(project_salary_delete, url_prefix='/project_salary_delete/')
app.register_blueprint(project_salary_modify, url_prefix='/project_salary_modify/')
app.register_blueprint(employee_salary_add, url_prefix='/employee_salary_add/')
app.register_blueprint(employee_salary_delete, url_prefix='/employee_salary_delete/')
app.register_blueprint(employee_salary_modify, url_prefix='/employee_salary_modify/')
app.register_blueprint(tatistical, url_prefix='/tatistical/')

# try:
#     user4 = Users(username="admin", password="123456", root=1)
#     db.session.add_all([user4])
#     db.session.commit()
# except Exception as e:
#     db.session.rollback()



if __name__ == '__main__':
    app.run(host="127.0.0.1",
            port=8888,
            debug=True)
