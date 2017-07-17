<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/jspHeader.jsp" %>    
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�������</title>

<style type="text/css">
	body {
		backgroud-color : #5AAEFF;
	}
	
	html,body {
		width : 100%;
		height: 100%;
		overflow: hidden;
	}
	div:not(.room_inline):not(.box_left_bottom) {
		border-radius : 10px ;
	    box-shadow: 0px 0px 15px rgba(0,0,0,.3);
	    -moz-box-shadow: 0px 0px 15px rgba(0,0,0,.3); 
	    -webkit-box-shadow: 0px 0px 15px rgba(0,0,0,.3); 
	    -o-box-shadow: 0px 0px 15px rgba(0,0,0,.3); 
	    -moz-border-radius-bottom-left: 10px;
	    -khtml-border-bottom-left-radius: 10px;
	    -webkit-border-bottom-left-radius: 10px;
	    border-bottom-left-radius: 10px;
	    -moz-border-radius-bottom-right: 10px;
	    -khtml-border-bottom-right-radius: 10px;
	    -webkit-border-bottom-right-radius: 10px;
	    border-bottom-right-radius: 10px;
	}
	
	div.box {
		background-color : #5AAEFF;
		height: 95%;
		margin : 10px 10px;
	}
	
	div.box_left_top {
		float: left;
		position: absolute;
		top: 5%; 
		width: 72%; 
		padding:10px; 
		height: 10%; 
		display:inline;
		margin : 0 10px;
		background-image: url('${path}/img/omok.jpg');
		min-width: 800px;
	}
		
	div.box_right_top {
		background-color : #ffffff;
		float: right;
		top: 5%;
		position: absolute;
		right: 20px;
		width:20%;
		padding:10px; 
		margin: 0 10px 10px -10px;
		overflow: hidden;
		height: 25%;
		display: inline;
	}
	
	div.box_left_middle {
		background-color: #EAEAEA;
		float: left;
		position: absolute;
		top: 20%; 
		width: 72%; 
		padding:10px; 
		height: 60%; 
		display:inline;
		min-width: 800px;
	}
	
	div.box_left_bottom {
		position: absolute;
		float: left;
		bottom: 5%;
		margin : 0 10px;
		width: 72%;
		padding: 10px;
		height: 8%;
		display: inline;
		min-width: 800px;
	}

	
	div.box_right_middle {
		background-color : #ffffff;
		float: right;
		bottom : 37%;
		position: absolute;
		height: 25%;
		right: 20px;
		width : 20%;
		margin-left: 10px;
		margin-right: 10px;
		padding: 10px;
	}
	
	div.box_right_bottom {
		background-color : #ffffff;
		float: right;
		bottom : 7%;
		position: absolute;
		height: 25%;
		right: 20px;
		width : 20%;
		margin-left: 10px;
		margin-right: 10px;
		padding: 10px;
	}
	
	div.room {
		position: relative;
		background-color : #ffffff;
		display: inline;
		float: left; 
		width: 29%;
		padding: 10px 10px; 
		margin: 10px 10px;
		height: 40%;
		overflow: hidden;
		min-width: 240px;
	}
	
	div.room_inline {
		display: inline;
		float: inherit;
		width: 95%;
		height: 70%;
	}
	
</style>
<style>
		#container {
			width: 100%;
			height : 100%;
			text-align:center;
		}
		.tab {
			list-style: none;
			margin: 0;
			padding: 0;
			overflow: hidden;
		}
		/* Float the list items side by side */
		.tab li {
			float: left;
		}
		/* Style the links inside the list items */
		.tab li a {
			display: inline-block;
			color: #000;
			text-align: center;
			text-decoration: none;
			padding: 14px 16px;
			font-size: 15px;
			transition:0.3s;
		}
		/* Style the tab content */
		.tabcontent {
			display: none;
			background-color:rgb(0,154,200);
			padding: 6px 12px;
			color:#fff;
		}
		ul.tab li.current{
			background-color: rgb(0,154,200);
			color: #222;
		}
		.tabcontent.current {
			display: block;
			height: 70%;
		}
</style>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>
<div class="box" style="min-width: 98%; /* border: 1px solid black; */">
	
	<!-- ���� ��� -->
	<div class="box_left_top"></div>

	<!-- ���� ��� ���������� -->
	<div class="box_right_top">
		<table border="1" cellpadding="0" cellspacing="0" width="100%">
			<tr>
				<td>���������� ���̺�</td>
			</tr>
		</table>
	</div>
	
	<!-- ���� �߰� ��ŷ���� -->
	<div class="box_right_middle">
			<ul class="tab">
				<li class="current" data-tab="tab1"><a href="#">��ŷ ����</a></li>
				<li data-tab="tab2"><a href="#">��ü ������</a></li>
			</ul>
	
			<div id="tab1" class="tabcontent current">
				<h6>About</h6>
			</div>
	
			<div id="tab2" class="tabcontent">
				<h6>Portfolio</h6>
			</div>
	</div>
	
	
	<!-- ���� �ϴ� ä��â -->
	<div class="box_right_bottom">
		ä��â
		<input type="text" style="bottom: 5px;">
		<input type="submit" value="����">
	</div>
	
	<!-- �� ��� -->
	<div class="box box_left_middle" style="min-width:800px;">
	
		<c:forEach begin="1" end="6">
			<div class="room">
				�� : <input type="text" value="�� ����">
				<hr>
				<div class="room_inline" style="/* border:1px solid black; */ padding: 5px 5px;">
					<table border="1" cellpadding="0" cellspacing="0" width="100%" height="90%;">
						<tr height="80%;">
							<td><img src="">ĳ����1</td>
							<td rowspan="2">���� ��</td>
							<td><img src="">ĳ����2</td>
						</tr>
						<tr height="20%;">
							<td>ĳ����1 ID</td>
							<td>ĳ����2 ID</td>
						</tr>
					</table>
				</div>
			</div>
		</c:forEach>
	</div>
 	
 	<!-- �ϴ� ��ư �κ� -->
	<div class="box_left_bottom">
		 
		 <input type="button" value="�� �����" style="height: 100%; width:10%;">
		 <input type="button" value="�����ϱ�" style="height: 100%; width:10%;">
		 
		 <input type="button" value="����� ����" style="height: 100%; float:right;  width:10%; margin-left:10px">
		 <input type="button" value="��� ����" style="height: 100%; float:right; width:10%; margin-left:10px">
		 <input type="button" value="��ü�� ����" style="height: 100%; float:right; width:10%;">
	</div>
	
</div> 

<script>
		$(function() {
			$('ul.tab li').click(function() {
				var activeTab = $(this).attr('data-tab');
				$('ul.tab li').removeClass('current');
				$('.tabcontent').removeClass('current');
				$(this).addClass('current');
				$('#' + activeTab).addClass('current');
			})
		});
</script>
</body>
</html>