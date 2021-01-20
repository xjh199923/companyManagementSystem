# 股票管理系统

<a href="https://github.com/vuejs/vue">
    <img src="https://img.shields.io/badge/vue-2.6.10-brightgreen.svg" alt="vue">
  </a>
  <a href="https://github.com/ElemeFE/element">
    <img src="https://img.shields.io/badge/element--ui-2.8.2-brightgreen.svg" alt="element-ui">
  </a>

基于 Vue + Element UI 的房地产系统解决方案。



该课题针对某房地产效果图公司的项目流程进行信息化管理。其目标是使得公司的管理人员、员工、前台、能够对项目、员工（包括主管）、财务、工作业绩以及客户进行全方位的管理，并在此基础上能够挖掘员工潜力，能够对员工的工作能力和工作态度进行客观评价，同时能够对项目的执行过程进行监控和质量评估，使得公司能够高效地完成客户的项目。

该系统前端基于 [vue.js](https://cn.vuejs.org/index.html)，使用 vue-cli3 脚手架，引用 Element UI 组件库以及ecahrts组件等核心组件开发，后端采用轻量级Web应用框架[flask](https://flask.palletsprojects.com/en/1.1.x/)，数据库则是采用流行的mysql数据库。

## 功能

-   [x] 登录/注销
-   [x] Dashboard
-   [x] 员工信息管理
-   [x] 客户信息管理:sparkles:
-   [x] 项目信息管理
-   [x] 项目资金信息管理
-   [x] 员工工资信息管理
-   [x] 项目进度信息管理

## 系统展示

### 登陆界面

![login](./webView/screenshots/1.png)

### 系统首页

![](./webView/screenshots/2.png)

### 员工信息管理

![](./webView/screenshots/3.png)

### 客户信息管理

![](./webView/screenshots/4.png)

### 项目信息管理

![](./webView/screenshots/5.png)

### 项目资金信息管理

![](./webView/screenshots/6.png)

### 员工工资信息管理

![](./webView/screenshots/7.png)

### 项目进度信息管理

![](./webView/screenshots/8.png)



## 安装步骤

### clone项目

```sh
git clone https://github.com/xjh199923/companyManagementSystem.git   // 把项目下载到本地
cd companyManagementSystem  // 进入项目
```

### 后端项目安装

#### 数据库配置

将后端flaskBack目录文件夹，导入的你的python环境下，之后需要在本地建立名为`realEstate`的mysql数据库，并修改config.yaml中的数据库配置如下：

```python
# 配置 sqlalchemy  "数据库驱动://数据库用户名:@主机地址:端口/数据库名称"
SQLALCHEMY_DATABASE_URI: "mysql://root:xjh199923@127.0.0.1:3306/realEstate"
```

#### Flask环境配置：

Python依赖如下：

```
certifi==2020.12.5
chardet==3.0.4
click==7.1.2
Cython==0.29.21
DateTime==4.3
docopt==0.6.2
Faker==5.6.1
Flask==1.1.2
Flask-Cors==3.0.10
Flask-SQLAlchemy==2.4.4
idna==2.10
itsdangerous==1.1.0
Jinja2==2.11.2
MarkupSafe==1.1.1
numpy==1.19.4
pandas==1.2.0
pipreqs==0.4.10
PyJWT==1.7.1
PyMySQL==0.10.1
python-dateutil==2.8.1
pytz==2020.4
PyYAML==5.3.1
requests==2.25.0
six==1.15.0
SQLAlchemy==1.3.20
text-unidecode==1.3
urllib3==1.26.2
Werkzeug==1.0.1
yarg==0.1.9
zope.interface==5.2.0
```

可以利用以下命令安装：

```shell
pip install -r requirements.txt
```

依赖安装完成后，运行run.py即可启动后端服务器。

### 前端项目安装

```shell
cd  webView  //进入前端项目目录 

npm install         // 安装项目依赖，等待安装完成之后，安装失败可用 cnpm 或 yarn

// 开启服务器，浏览器访问 http://localhost:8080
npm run serve

// 执行构建命令，生成的dist文件夹放在服务器下即可访问
npm run build
```

### 数据配置文件

预处理过后的数据以SQL的格式进行保存，mysql运行即可生成相应的数据库。

## 特别鸣谢

- [vue-manage-system](https://github.com/lin-xin/vue-manage-system)
