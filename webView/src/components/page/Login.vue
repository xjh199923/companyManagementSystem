<template>
    <div class="login-wrap">
        <div class="ms-login">
            <div class="ms-title">房地产公司信息管理系统</div>
            <el-form :model="param" :rules="rules" ref="login" label-width="0px" class="ms-content">
                <el-form-item prop="username">
                    <el-input v-model="param.username" placeholder="username">
                        <el-button slot="prepend" icon="el-icon-lx-people"></el-button>
                    </el-input>
                </el-form-item>
                <el-form-item prop="password">
                    <el-input
                        type="password"
                        placeholder="password"
                        v-model="param.password"
                        @keyup.enter.native="submitForm()"
                    >
                        <el-button slot="prepend" icon="el-icon-lx-lock"></el-button>
                    </el-input>
                </el-form-item>
                <div class="login-btn">
                    <el-button type="primary" @click="submitForm()">登录</el-button>
                </div>
                <p class="login-tips">提示: 用户名为员工号和初始密码为123456。</p>
            </el-form>
        </div>
    </div>
</template>

<script>
import axios from 'axios'
export default {
    data: function() {
        return {
            param: {
                username: 'E1001',
                password: '123456',
            },
            rules: {
                username: [{ required: true, message: '请输入用户名', trigger: 'blur' },
                  { min: 3, max: 10, message: '账号长度在 3 到 10 个字符', trigger: 'blur' }],
                password: [{ required: true, message: '请输入密码', trigger: 'blur' },
                  { min: 6, max: 15, message: '密码长度在 6 到 15 个字符', trigger: 'blur' }],
            },
        };
    },
    methods: {
        submitForm() {
            // 用户信息校验
            const url = "/login/authenticate/";
            let params = this.param;
            var qs = require('qs');
            axios.post(url,params,{'Content-Type':'application/json'})
            .then(res => {
                var userLevel = res.data.level; //返回用户等级
                this.$refs.login.validate(valid => {
                    if (valid && userLevel != 0) {
                        this.$message.success('登录成功');
                        localStorage.setItem('ms_username', this.param.username);
                        this.$router.push('/');
                    } else {
                        this.$message.error('登录失败');
                        console.log('error submit!!');
                        return false;
                    }
                });
                console.log(res.data);
            })
            .catch(() => {});
        },
    },
};
</script>

<style scoped>
.login-wrap {
    position: relative;
    width: 100%;
    height: 100%;
    background-image: url(../../assets/img/login-bg2.jpg);
    background-size: 100%;
}
.ms-title {
    width: 100%;
    line-height: 50px;
    text-align: center;
    font-size: 24px;
    color: #fff;
    border-bottom: 1px solid #ddd;
}
.ms-login {
    position: absolute;
    left: 48%;
    top: 50%;
    width: 450px;
    height: 300px;
    margin: -190px 0 0 -175px;
    border-radius: 5px;
    background: rgba(255, 255, 255, 0.3);
    overflow: hidden;
}
.ms-content {
    padding: 40px 30px;
}
.login-btn {
    text-align: center;
}
.login-btn button {
    width: 100%;
    height: 36px;
    margin-bottom: 10px;
}
.login-tips {
    font-size: 13px;
    line-height: 30px;
    color: black;
}
</style>