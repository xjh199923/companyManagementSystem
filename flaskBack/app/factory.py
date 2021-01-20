import yaml
import os
from flask import Flask,Blueprint,jsonify,request
from flask_cors import CORS
from app.models.Users import *
from app.models.Customer import *
from app.models.Employee import *
from app.models.Project import *
from app.models.Employee_salary import *
from app.models.Project_salary import *

#采用函数初始化flask app
def create_app(config_name=None, config_path=None):
    app = Flask(__name__)

    if not config_path:
        pwd = os.getcwd()
        config_path = os.path.join(pwd, 'config/config.yaml')
    if not config_name:
        config_name = 'PRODUCTION'
    conf = read_yaml(config_name, config_path)
    app.config.update(conf)

    # r'/*' 是通配符，让本服务器所有的URL 都允许跨域请求
    CORS(app, resources={r"/*": {"origins": "*"}})  # 允许所有域名跨域

    db.app = app
    db.init_app(app)
    db.create_all()

    return app

#flask加载yaml文件配置
def read_yaml(config_name,config_path):
    """
	config_name:需要读取的配置内容
	config_path:配置文件路径
	"""
    if config_name and config_path:
        with open(config_path, 'r') as f:
            conf =  yaml.safe_load(f.read()) # yaml.load(f.read())
        if config_name in conf.keys():
            return conf[config_name.upper()]
        else:
            raise KeyError('未找到对应的配置信息')
    else:
        raise ValueError('请输入正确的配置名称或配置文件路径')
