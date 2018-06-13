<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>

<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>

<script>

$(document).ready(function() {

	$("input[type=button]").click(function() {

		$.ajax({

			url : "./ajaxData.do",

			type : "post", //get post둘중하나

			data : {},

			success : function(data) {

				var obj = JSON.parse(data);

				var response = obj.response;

// 				console.log(data);

				var html = "";

				html += "<table border=1>"

				for(var i = 0; i < response.length; i ++) {

					html += "<tr>";

					html += "<td>" + response[i].baseDate + "</td>";

					html += "<td>" + response[i].baseTime + "</td>";

					html += "<td>" + response[i].category + "</td>";
					
					html += "<td>" + response[i].fcstDate + "</td>";
					
					html += "<td>" + response[i].fcstTime + "</td>";
					
					html += "<td>" + response[i].fcstValue + "</td>";
					
					html += "<td>" + response[i].nx + "</td>";
					
					html += "<td>" + response[i].ny + "</td>";
					
					html += "</tr>";

				}

				html += "</table>";

				$("div").append(html);

			}

		});

		

		return false; //자기자신이 submit이나 뭔가 실행하는기능이 있다면 그것을 막고 위에 내용만 실행

	});

});

</script>

</head>

<body>

<input type="button" value="확인" />

<div></div>

</body>

</html>



