<template>
    <div>
        <div class="crumbs">
            <el-breadcrumb separator="/">
                <el-breadcrumb-item>
                    <i class="el-icon-lx-people"></i> 员工信息
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
                <el-select v-model="search" placeholder="选择部门类型" @change="change">
                  <el-option label="全部信息" value="0"></el-option>
                  <el-option label="模型部门" value="1"></el-option>
                  <el-option label="渲染部门" value="2"></el-option>
                  <el-option label="后期部门" value="3"></el-option>
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
                <el-table-column prop="employee_id" label="员工编号"  align="center"></el-table-column>
                <el-table-column prop="employee_name" label="员工姓名"  align="center"></el-table-column>
                <el-table-column prop="employee_phone" label="联系方式"  align="center"></el-table-column>
                <el-table-column prop="supervisor_id" label="部门名称"  align="center"></el-table-column>
                <el-table-column prop="employee_rank" label="员工等级"  align="center"></el-table-column>
                <el-table-column prop="position" label="员工职位" align="center"></el-table-column>
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
        <!-- 增加员工弹出框 -->
        <el-dialog title="增加员工信息" :visible.sync="add" width="24%">
          <el-form ref="employee_data" :model="employee_data" label-width="70px">
              <el-form-item label="员工编号">
                  <el-input v-model="employee_data.employee_id"></el-input>
              </el-form-item>
              <el-form-item label="员工姓名">
                  <el-input v-model="employee_data.employee_name"></el-input>
              </el-form-item>
              <el-form-item label="联系方式">
                  <el-input v-model="employee_data.employee_phone"></el-input>
              </el-form-item>
              <el-form-item label="部门名称">
                  <el-select v-model="employee_data.supervisor_id" placeholder="请选择部门名称">
                    <el-option label="模型部" value="1"></el-option>
                    <el-option label="渲染部" value="2"></el-option>
                    <el-option label="后期部" value="3"></el-option>
                  </el-select>
              </el-form-item>
              <el-form-item label="员工等级">
                  <el-select v-model="employee_data.employee_rank" placeholder="请选择员工等级">
                    <el-option label="新手" value="新手"></el-option>
                    <el-option label="老手" value="老手"></el-option>
                  </el-select>
              </el-form-item>
              <el-form-item label="员工职位">
                  <el-input v-model="employee_data.position"></el-input>
              </el-form-item>
          </el-form>
          <span slot="footer" class="dialog-footer">
              <el-button @click="add = false">取 消</el-button>
              <el-button type="primary" @click="add_employee">确 定</el-button>
          </span>
        </el-dialog>
        <!-- 编辑弹出框 -->
        <el-dialog title="编辑" :visible.sync="editVisible" width="24%">
            <el-form ref="form" :model="form" label-width="70px">
                <el-form-item label="员工编号">
                    <el-input v-model="form.employee_id" disabled></el-input>
                </el-form-item>
                <el-form-item label="员工姓名">
                    <el-input v-model="form.employee_name"></el-input>
                </el-form-item>
                <el-form-item label="联系方式">
                    <el-input v-model="form.employee_phone"></el-input>
                </el-form-item>
                <el-form-item label="部门名称">
                    <el-select v-model="form.supervisor_id" placeholder="请选择部门名称">
                      <el-option label="模型部" value="1"></el-option>
                      <el-option label="渲染部" value="2"></el-option>
                      <el-option label="后期部" value="3"></el-option>
                    </el-select>
                </el-form-item>
                <el-form-item label="员工等级">
                    <el-select v-model="form.employee_rank" placeholder="请选择员工等级">
                      <el-option label="新手" value="新手"></el-option>
                      <el-option label="老手" value="老手"></el-option>
                    </el-select>
                </el-form-item>
                <el-form-item label="员工职位">
                    <el-input v-model="form.position"></el-input>
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
            tableData: [],
            multipleSelection: [],
            delList: [],
            editVisible: false,
            add: false,
            pageTotal: 0,
            search: '',  //部门下拉框类型
            form: {},
            employee_data: 
              {
                employee_id: '',
                employee_name: '',
                employee_phone: '',
                supervisor_id: '',
                employee_rank: '',
                position: ''
              },
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
                FileSaver.saveAs(new Blob([wbout], { type: 'application/octet-stream' }), '员工信息.xlsx')
            } catch (e) { if (typeof console !== 'undefined') console.log(e, wbout) }
            return wbout
        },

        change(value) {
          this.query.pageIndex = 1
          this.getData()
        },
        getData() {
            const url = "/employee/info/pageIndex"+this.query.pageIndex;
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



            // const url = "/employee/info/pageIndex"+this.query.pageIndex;
            // axios.get(url).then((res) => {
            //     this.tableData = res.data.infoList;
            //     this.pageTotal = res.data.infoLen;
            // })
            // .catch(() => {});
        },
        // 删除操作
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
        // 删除员工
        handleDelete(index, row) {
            // 二次确认删除
            this.$confirm('确定要删除吗？', '提示', {
                type: 'warning'
            })
                .then(() => {
                  let params = this.tableData[index];
                  console.log(params);
                  const url = "/employee_delete/delete";
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
        //添加员工
        add_employee() {
          const url = "/employee_add/add";
          let params = this.employee_data;
          var qs = require('qs');
          axios.post(url,params,{'Content-Type':'application/json'})
          .then(res => {})
          .catch(() => {});
          this.$message.success('添加成功！');
          this.add = false;
          this.getData();
        },
        // 编辑操作：读取数据
        handleEdit(index, row) {
            this.idx = index;
            this.form = row;
            this.editVisible = true;
        },
        // 保存编辑：发送修改信息
        saveEdit() {
            this.editVisible = false;
            const url = "/employee_modify/modify";
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
