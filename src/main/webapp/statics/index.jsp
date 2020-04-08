<%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>

<!DOCTYPE html>
<html lang="en" >

<head>
<meta charset="UTF-8">
<title>��¼ע���</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!--ͼ���-->
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css'>

<!--��Ӧʽ���-->
<link rel='stylesheet' href='${pageContext.request.contextPath}/statics/css/bootstrap.min.css'>

<!--��Ҫ��ʽ-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/style.css">


</head>

<body>
  
<div class="container">

	<div class="card-wrap">
	
		<div class="card border-0 shadow card--welcome is-show" id="welcome">
			<div class="card-body">
				<h2 class="card-title">��ӭ����</h2>
				<p>��ӭ�����¼ҳ��</p>
				<div class="btn-wrap"><a class="btn btn-lg btn-register js-btn" data-target="register">��ʦ</a><a class="btn btn-lg btn-login js-btn" data-target="login">ѧ��</a></div>
			</div>
		</div>
		
		<div class="card border-0 shadow card--register" id="register">
			<div class="card-body">
				<h2 class="card-title">��ʦ��¼</h2>
				<form  action="${pageContext.request.contextPath}/login/teacher" method="post" >
					<div class="form-group">
						<input class="form-control" type="text" placeholder="����" required="required" name="tusername"/>
					</div>
					<div class="form-group">
						<input class="form-control" type="password" placeholder="����" required="required" name="tpassword"/>
					</div>
					<input type="submit" class="btn btn-lg" value="��¼">

				</form>
			</div>
			<button class="btn btn-back js-btn" data-target="welcome"><i class="fas fa-angle-left"></i></button>
		</div>
		
		<div class="card border-0 shadow card--login" id="login">
			<div class="card-body">
				<h2 class="card-title">ѧ����¼</h2>

				<form  action="/login/teacher" method="post" >
					<div class="form-group">
						<input class="form-control" name="susername" type="text" placeholder="����" required="required"/>
					</div>
					<div class="form-group">
						<input class="form-control" name="spassword" type="password" placeholder="����" required="required"/>
					</div>
					<button class="btn btn-lg" >��¼</button>
				</form>
			</div>
			<button class="btn btn-back js-btn" data-target="welcome"><i class="fas fa-angle-left"></i></button>
		</div>
		
	</div>
	
</div>
  
<script src="${pageContext.request.contextPath}/statics/js/index.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/main.min.js"></script>
</body>
</html>