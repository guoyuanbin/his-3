<%-- 
  Created by IntelliJ IDEA. 
  2018/12/03 
  To change this template use File | Settings | File Templates. 
--%> 
<%@ page contentType="text/html;charset=UTF-8" language="java" %> 
<%@include file="/common/common.jsp"%> 
<html> 
<head> 
    <title>Title</title>
    <script>
        $(function () {
            $.get("${path}/baseManufacturer/ajaxList.action",function (data) {
                $(data).each(function () {
                    $("#manCode").append("<option value='"+this.manCode+"'>"+this.manChnName+"</option>");
                })
                $("#manChnName").val($("#manCode option:selected").html());
            },"json")

            $("#manCode").change(function () {
                $("#manChnName").val($("#manCode option:selected").html());
                alert($("#manChnName").val());
            })

            $.get("${path}/medicineType/ajaxList.action",function (data) {
                $(data).each(function () {
                    $("#typeCode").append("<option value='"+this.typeId+"'>"+this.typeName+"</option>");
                })
                $("#typeName").val($("#typeCode option:selected").html());
            },"json")
            $("#typeCode").change(function () {
                $("#typeName").val($("#typeCode option:selected").html());
            })

        })
    </script>
</head> 

<body class="main"> 
<form action="${path}/medicineCode/insert.action"> 
    <h1>添加药品编码</h1> 
    <div class="update"> 
        <div class="left"> 
            <span>药品名</span> 
            <input type="text" name="medicineName" value=""> 
        </div> 
        <div class="right"> 
            <span>别名名称</span> 
            <input type="text" name="aliasName" value=""> 
        </div> 
        <div class="left"> 
            <span>规格</span> 
            <input type="text" name="specification" value=""> 
        </div>
        <div class="right">
            <span>生产厂商</span>
            <select name="manCode" id="manCode"></select>
            <input type="hidden" id="manChnName" name="manChnName">
        </div>
        <div class="left">
            <span>药品分类</span>
            <select name="typeCode" id="typeCode"></select>
            <input type="hidden" id="typeName" name="typeName">
        </div>
        <div class="right"> 
            <span>库存单位</span> 
            <input type="text" name="stockUnit" value=""> 
        </div> 
        <div class="left"> 
            <span>零售价</span> 
            <input type="text" name="retailPrice" value=""> 
        </div> 
        <div class="right"> 
            <span>库存平均价</span>
            <input type="text" name="stockPrice" value=""> 
        </div> 
        <div class="left"> 
            <span>用药注意事项</span> 
            <input type="text" name="drugNotesPatient" value=""> 
        </div> 
        <div class="right"> 
            <span>药袋说明</span> 
            <input type="text" name="drugNote" value=""> 
        </div> 
        <div class="left"> 
            <span>药品外形说明</span> 
            <input type="text" name="drugForm" value=""> 
        </div> 
        <div class="right"> 
        </div> 
        <div id="error"></div> 
        <div class="buttons"> 
            <input type="submit" value="提交"> 
            <input type="button" onclick="history.back()" value="返回"> 
        </div> 
    </div> 
</form> 
</body> 
</html> 
 
