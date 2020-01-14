<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>질문 수정</title>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
<div id="header">
		<jsp:include page="header.jsp" />
	</div>
<h1>질문 수정</h1>
<div id="div_question" style="border: 1px solid black; margin-bottom: 20px; height: 640px;">


</div>
<div id="div_question_re" style="border: 1px solid black; height: 500px;">
<form>
<input type='text' style="width: 50%;height: 40px; " value='펫시터 활동 중 강아지가 경계하거나 이빨을 보이며 공격하려 하는 경우 어떻게 대처하시겠습니까?' readOnly class='questions'/><br />
<input type='hidden' name='questions_no' value='question'>
<input class='qu_result' style='width: 50%; height: 40px;' type='text' name="pq_modify"/><input style="height: 40px;" type="submit" value="수정" formaction="pqmodify"><br />
</form>
</div>
<script>
var json=${json_question};
console.log(json);
var str="";

for(var i=0;i<json.length;i++){
	str+="<form method='post'>";
	str+="<input style='width: 50%; height: 35px;' type='text' value='"+json[i]+"' readOnly class='questions'/><br />";
	str+="<input type='hidden' name='questions_no' value='question"+(i+1)+"'>";
	str+="<input style='width: 50%; height: 35px; class='qu_result' name='questions' type='text' /><input style='height: 40px;' type='submit' value='수정' formaction='pqmodify'><br />";
	str+="</form>";
	console.log(json[i]);
}

$("#div_question").append(str);
console.log("str="+str);	

// 	$('#btn').on(click,function(){
		
// 	});
</script>
</body>
</html>