<template>
    <div>
        <div class="crumbs">
            <el-breadcrumb separator="/">
                <el-breadcrumb-item>
                    <i class="el-icon-lx-profile"></i> 客户信息
                </el-breadcrumb-item>
            </el-breadcrumb>
        </div>
        <div class="container">
            <div class="handle-box">
                <el-button
                    type="primary"
                    icon="el-icon-delete"
                    class="handle-del mr10"
                    @click="delAllSelection"
                >批量删除</el-button>
                <el-select v-model="search" placeholder="选择客户类型" @change="change">
                  <el-option label="全部信息" value="0"></el-option>
                  <el-option label="一级客户" value="1"></el-option>
                  <el-option label="二级客户" value="2"></el-option>
                  <el-option label="三级客户" value="3"></el-option>
                </el-select>
                <el-button type="primary" icon="el-icon-add" class="add_style" @click="add = true">增加</el-button>
                <el-button type="success" icon="el-icon-download" @click="exportExcel">导出信息</el-button>
            </div>
            <el-table
                :data="tableData"
                border
                class="table"
                id="out-table"
                ref="multipleTable"
                header-cell-class-name="table-header"
                @selection-change="handleSelectionChange"
            >
                <el-table-column type="selection" width="55" align="center"></el-table-column>
                <el-table-column prop="customer_id" label="客户编号" align="center"></el-table-column>
                <el-table-column prop="customer_name" label="客户名称" align="center"></el-table-column>
                <el-table-column prop="customer_rank" label="客户等级" align="center"></el-table-column>
                <el-table-column prop="customer_phone" label="联系电话" align="center"></el-table-column>
                <el-table-column prop="customer_qq" label="QQ" align="center"></el-table-column>
                <el-table-column prop="customer_email" label="Email" align="center"></el-table-column>
                <el-table-column label="操作" width="180" align="center">
                    <template slot-scope="scope">
                        <el-button
                            type="text"
                            icon="el-icon-edit"
                            @click="handleEdit(scope.$index, scope.row)"
                        >编辑</el-button>
                        <el-button
                            type="text"
                            icon="el-icon-delete"
                            class="red"
                            @click="handleDelete(scope.$index, scope.row)"
                        >删除</el-button>
                    </template>
                </el-table-column>
            </el-table>
            <div class="pagination">
                <el-pagination
                    background
                    layout="total, prev, pager, next"
                    :current-page="query.pageIndex"
                    :page-size="query.pageSize"
                    :total="pageTotal"
                    @current-change="handlePageChange"
                ></el-pagination>
            </div>
        </div>
        <!-- 添加客户信息弹出框 -->
        <el-dialog title="增加客户信息" :visible.sync="add" width="24%">
          <el-form ref="employee_data" :model="customer_data" label-width="70px">
              <el-form-item label="客户编号">
                  <el-input v-model="customer_data.customer_id"></el-input>
              </el-form-item>
              <el-form-item label="客户姓名">
                  <el-input v-model="customer_data.customer_name"></el-input>
              </el-form-item>
              <el-form-item label="客户等级">
                  <el-select v-model="form.customer_rank" placeholder="请选择客户等级">
                    <el-option label="一级客户" value="1"></el-option>
                    <el-option label="二级客户" value="2"></el-option>
                    <el-option label="三级客户" value="3"></el-option>
                  </el-select>
              </el-form-item>
              <el-form-item label="联系方式">
                  <el-input v-model="customer_data.customer_phone"></el-input>
              </el-form-item>
              <el-form-item label="QQ">
                  <el-input v-model="customer_data.customer_qq"></el-input>
              </el-form-item>
              <el-form-item label="Email">
                  <el-input v-model="customer_data.customer_email"></el-input>
              </el-form-item>
          </el-form>
          <span slot="footer" class="dialog-footer">
              <el-button @click="add = false">取 消</el-button>
              <el-button type="primary" @click="add_customer">确 定</el-button>
          </span>
        </el-dialog>
        <!-- 编辑弹出框 -->
        <el-dialog title="编辑" :visible.sync="editVisible" width="24%">
            <el-form ref="form" :model="form" label-width="70px">
                <el-form-item label="客户编号">
                    <el-input v-model="form.customer_id" disabled=""></el-input>
                </el-form-item>
                <el-form-item label="客户姓名">
                    <el-input v-model="form.customer_name"></el-input>
                </el-form-item>
                <el-form-item label="客户等级">
                    <el-select v-model="form.customer_rank" placeholder="请选择客户等级">
                      <el-option label="一级客户" value="1"></el-option>
                      <el-option label="二级客户" value="2"></el-option>
                      <el-option label="三级客户" value="3"></el-option>
                    </el-select>
                </el-form-item>
                <el-form-item label="联系方式">
                    <el-input v-model="form.customer_phone"></el-input>
                </el-form-item>
                <el-form-item label="QQ">
                    <el-input v-model="form.customer_qq"></el-input>
                </el-form-item>
                <el-form-item label="Email">
                    <el-input v-model="form.customer_email"></el-input>
                </el-form-item>
            </el-form>
            <span slot="footer" class="dialog-footer">
                <el-button @click="editVisible = false">取 消</el-button>
                <el-button type="primary" @click="saveEdit">确 定</el-button>
            </span>
        </el-dialog>
    </div>
</template>

<script>
import axios from 'axios'
import FileSaver from 'file-saver'
import XLSX from 'xlsx'
import { fetchData } from '../../api/index';
export default {
    name: 'basetable',
    data() {
        return {
            query: {
                address: '',
                name: '',
                pageIndex: 1,
                pageSize: 10
            },
            customer_data:
              {
                customer_id: '',
                customer_name: '',
                customer_rank: '',
                customer_phone: '',
                customer_qq: '',
                customer_email: ''
              },
            tableData: [],
            multipleSelection: [],
            delList: [],
            editVisible: false,
            add: false,
            pageTotal: 0,
            search: '',  //客户等级下拉框类型
            form: {},
            idx: -1,
            id: -1
        };
    },
    created() {
        this.getData();
    },
    methods: {
        exportExcel () {
            /* out-table关联导出的dom节点  */
            var wb = XLSX.utils.table_to_book(document.querySelector('#out-table'))
            /* get binary string as output */
            var wbout = XLSX.write(wb, { bookType: 'xlsx', bookSST: true, type: 'array' })
            try {
                FileSaver.saveAs(new Blob([wbout], { type: 'application/octet-stream' }), '客户信息.xlsx')
            } catch (e) { if (typeof console !== 'undefined') console.log(e, wbout) }
            return wbout
        },
        change(value) {
          this.query.pageIndex = 1
          this.getData()
        },
        getData()
        {
            const url = "/customer/info/pageIndex"+this.query.pageIndex;
            let params;
            if(this.search=='')
            {
              params = {search: 0};
            }
            else{
              params = {search: this.search};
            }
            var qs = require('qs');
            axios.post(url,params,{'Content-Type':'application/json'})
            .then(res => {
                console.log(res.data);
                this.tableData = res.data.infoList;
                this.pageTotal = res.data.infoLen;
            })
            .catch(() => {});
        },
        add_customer () {
          const url = "/customer_add/add";
          let params = this.customer_data;
          console.log(params);
          var qs = require('qs');
          axios.post(url,params,{'Content-Type':'application/json'})
          .then(res => {})
          .catch(() => {});
          this.add = false;
          this.getData();
          this.$message.success('添加成功！');
        },
        // 触发搜索按钮
        handleSearch() {
            this.$set(this.query, 'pageIndex', 1);
            this.getData();
        },
        // // 删除操作
        // handleDelete(index, row) {
        //     // 二次确认删除
        //     this.$confirm('确定要删除吗？', '提示', {
        //         type: 'warning'
        //     })
        //         .then(() => {
        //             this.$message.success('删除成功');
        //             this.tableData.splice(index, 1);
        //         })
        //         .catch(() => {});
        // },
        handleDelete(index, row) {
          // 二次确认删除
          this.$confirm('确定要删除吗？', '提示', {
              type: 'warning'
          })
              .then(() => {
                let params = this.tableData[index];
                console.log(params);
                const url = "/customer_delete/delete";
                var qs = require('qs');
                axios.post(url,params,{'Content-Type':'application/json'})
                .then(res => {})
                .catch(() => {});
                this.$message.success('删除成功');
                this.getData()
              })
              .catch(() => {});
        },
        // 多选操作
        handleSelectionChange(val) {
            this.multipleSelection = val;
        },
        delAllSelection() {
            const length = this.multipleSelection.length;
            let str = '';
            this.delList = this.delList.concat(this.multipleSelection);
            for (let i = 0; i < length; i++) {
                str += this.multipleSelection[i].name + ' ';
            }
            this.$message.error(`删除了${str}`);
            this.multipleSelection = [];
        },
        // 编辑操作
        handleEdit(index, row) {
            this.idx = index;
            this.form = row;
            this.editVisible = true;
        },
        // 保存编辑
        saveEdit() {
            this.editVisible = false;
            const url = "/customer_modify/modify";
            let params = this.form;
            console.log(params);
            var qs = require('qs');
            axios.post(url,params,{'Content-Type':'application/json'})
            .then(res => {})
            .catch(() => {});
            this.$message.success('修改成功！');
            this.getData();
        },
        // 分页导航
        handlePageChange(val) {
            this.$set(this.query, 'pageIndex', val);
            this.getData();
        }
    }
};
</script>

<style scoped>
.handle-box {
    margin-bottom: 20px;
}
.handle-input {
    width: 250px;
    display: inline-block;
}
.table {
    width: 100%;
    font-size: 14px;
}
.red {
    color: #ff0000;
}
.mr10 {
    margin-right: 10px;
}
.table-td-thumb {
    display: block;
    margin: auto;
    width: 40px;
    height: 40px;
}
.add_style {
  margin-left: 18px;
}
</style>
