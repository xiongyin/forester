<%--
  Created by IntelliJ IDEA.
  User: xiong
  Date: 17-1-7
  Time: 上午10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <script !src="">
        window.onload = function () {
              // 1.获取a 节点
            document.getElementsByTagName("a")[0].onclick = function () {
                //3.创建一个XMLHttpRequest 对象
                var request = new XMLHttpRequest();

                //4. 准备发送请求的数据：urlf
                var url = this.href+"?time="+new Date();
//                var method = "GET";
                var method = "POST";

                //5. 调用XMLHttpRequest 对象的open方法
                request.open(method, url);
                request.setRequestHeader("ContentType","application/x-www-form-urlencoded")

                //6. 调用XMLHttpRequest 对象的send 方法
//                request.send(null);
                request.send("name:'xiongyin'");

                //7. 为XMLHttpRequest 对象添加onreadystatechange 响应函数

                request.onreadystatechange = function () {

                    //8. 判断响应是否完成：XMLHttpRequest 对象的readyState属性值为4的时候
                    if (request.readyState == 4) {
                        //9.再判断响应是否可用：XMLHttpRequest 对象的status 属性值为200
                        if (request.status == 200 || request.status ==304) {
                            //10. 打印响应结果：responseText
                            alert(request.responseText);
                        }
                    }
                };

                //2. 取消默认行为
                return false;

            };
        };
    </script>
  </head>
  <body>
  <%--$END$--%>
  hello Tomcat 9.0.0.M15
  <br><br>
  <a href="helloAjax.txt">Hello AJAX</a>
  </body>
</html>
