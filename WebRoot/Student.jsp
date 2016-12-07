<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>学生页面</title>
	<link rel="stylesheet" href="bootstrap3.2.2/css/bootstrap.min.css">
    <script type="text/javascript" language="javascript">
    	function switchIframe(num)
    	{ 
    		//复位div颜色
    		var divs = document.getElementsByName("div");
			var len = divs.length;
			for(var i=0;i<len;i++){
				for(var j=0;j<len;j++){
					divs[j].style.backgroundColor = "8888BB";
				}
			}
    		switch (num) {
			case 1:
				document.getElementById("iframe1").src="iframe/student/StudentInformation.jsp";
				//alert(document.getElementById("iframe1").src);
				document.getElementById("div1").style.backgroundColor = "555588";
				break;
			case 2:
				document.getElementById("iframe1").src="iframe/student/ClassGrade.jsp";
				document.getElementById("div2").style.backgroundColor = "555588";
				break;
			case 3:
				document.getElementById("iframe1").src="iframe/student/MatesInformation.jsp";
				document.getElementById("div3").style.backgroundColor = "555588";
				break;
			default:
				alert("发生错误");
				break;
			}

		}
    </script>
  </head>
  <style>
  	.studentButton{
  		background-color:8888BB;
  		width:100% ;
  		height: 15%;
  		font-size: 50px;
  		padding-top: 20px;
  		border-radius:20px;
  		text-align:center;
  		
  	}
  	
  </style>  
  <body>
   	<div style="height:8%">
    	<jsp:include page="Head.jsp"></jsp:include>
    </div>
    <table  style="background-color: EEEEEE;height:90%;" width="100%">
    	<tr height="90%">
	    	<td width="15%">
	    		<div style="width: 100%;background-color: DDDDDD;height: 100%;" >
	    			<div style="height: 10%"></div>
	    			<div name="div" id="div1"  class = "studentButton" onclick="switchIframe(1)">个人信息</div><br/>
	    			<div name="div" id="div2"  class = "studentButton" onclick="switchIframe(2)">各科成绩</div><br/>
	    			<div name="div" id="div3"  class = "studentButton" onclick="switchIframe(3)">同学信息</div><br/>
	    		</div>
	    	</td>
	    	
	 		<td width="80%">
	 			<div  style="width:100%;background-color: DDDDDD;height: 100%" align="center">
	 				<iframe id="iframe1" src="iframe/welcome.jsp" width="100%" height="100%" style="margin: 10px"></iframe> 
	 			</div>
	 		</td>
	 	</tr>
    </table>
     <div style="height: 10%">
    	<jsp:include page="Tail.jsp" ></jsp:include>
     </div>
  </body>
</html>
