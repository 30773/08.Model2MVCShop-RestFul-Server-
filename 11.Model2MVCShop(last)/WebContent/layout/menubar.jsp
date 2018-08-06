<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
	.dropdown:hover > .dropdown-menu{
		display : block;
	}
	
	.rightMenu{
		position:absolute;
		float:right;
		top:0;
		left:158px;
	}
</style>

<div class="navbar  navbar-inverse navbar-fixed-top">
	
	<div class="container">
	       
		<a class="navbar-brand" href="${param.uri}index.jsp">DOG #</a>
		
		<!-- toolBar Button Start //////////////////////// -->
		<div class="navbar-header">
			<button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#target">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		</div>
		<!-- toolBar Button End //////////////////////// -->
		
	    <!--  dropdown hover Start -->
		<div 	class="collapse navbar-collapse" id="target">

			<ul class="nav navbar-nav">
				<c:if test="${sessionScope.user.role == 'admin'}">
					<li class="dropdown">
						<a	href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
							<span>������ �޴�</span>
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li class="dropdown">
								<a  href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
									<span >ȸ������</span>
									<span class="caret"></span>
								</a>
								<ul class="dropdown-menu rightMenu">
									<li><a href="#">ȸ��������ȸ</a></li>
								</ul>
							</li>
							<li class="dropdown">
								<a  href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
									<span >��ǰ����</span>
									<span class="caret"></span>
								</a>
								<ul class="dropdown-menu rightMenu">
									<li><a href="#">�ǸŻ�ǰ���</a></li>
									<li><a href="#">�ǸŻ�ǰ����</a></li>
								</ul>
							</li>
							<li class="dropdown">
								<a  href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
									<span >�ǸŰ���</span>
									<span class="caret"></span>
								</a>
								<ul class="dropdown-menu rightMenu">
									<li><a href="#">�Ǹ��̷���ȸ</a></li>
								</ul>
							</li> 
						</ul>
					</li>
				</c:if>

				<li class="dropdown">
					<a  href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
						<span >��ǰ����</span>
						<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="#">��ǰ�˻�</a></li>
						<c:if test="${!empty user}">
							<li><a href="#">�����̷���ȸ</a></li>
						</c:if>
					</ul>
				</li>
			</ul>
			
			
			<c:if test="${empty user}">
				<form class="navbar-form navbar-right">
					<input type="text" class="form-control" name="userId" placeholder="ID" style="display:inline-block; width:120px;"/>
					<input type="password" class="form-control" name="password" placeholder="PASSWORD" style="display:inline-block; width:120px;"/>
					<button type="submit" class="btn btn-success">Log In</button>
					<button type="button" class="btn btn-default">Sign Up</button>
				</form>
			</c:if>	
			<c:if test="${!empty user}">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#" class="user-info">${sessionScope.user.userName}</a>
					<li><a href="#">�α׾ƿ�</a></li>
				</ul>
			</c:if>
		</div>
	    
	</div>
</div>

<script type="text/javascript">

	function loginCheck(){
		var id=$('input:text').val();
		var pw=$('input:password').val();
		
		if(id == null || id.length < 1){
			alert('���̵� �Է����� �ʾҽ��ϴ�.');
			$('input:text').focus();
			return;
		}
		
		if(pw == null || pw.length < 1){
			alert('��й�ȣ�� �Է����� �ʾҽ��ϴ�.');
			$('input:password').focus();
			return;
		}
		
		$('.navbar-form').attr('method','post').attr('action','${param.uri}user/login').submit();
	}
	
	$(function(){
	
		$("a.user-info").on("click",function(){
			self.location.href="${param.uri}user/getUser?userId=${sessionScope.user.userId}";
		});
	
		$("a:contains('ȸ��������ȸ')").on("click", function(){
			self.location.href="${param.uri}user/listUser";
		});
		
		$("a:contains('�ǸŻ�ǰ���')").on("click", function(){
			self.location.href="${param.uri}product/addProduct";
		});
	
		$("a:contains('�ǸŻ�ǰ����')").on("click", function(){
			self.location.href="${param.uri}product/listProduct?menu=manage";
		});
	
		$("a:contains('�Ǹ��̷���ȸ')").on("click", function(){
			self.location.href="${param.uri}purchase/listSale?searchKeyword=saleList";
		});
	
		$("a:contains('��ǰ�˻�')").on("click", function(){
			self.location.href="${param.uri}product/listProduct?menu=search";
		});
	
		$("a:contains('�����̷���ȸ')").on("click", function(){
			self.location.href="${param.uri}purchase/listPurchase?searchKeyword=purchaseList&searchCondition=${user.userId}";
		});
		
		$("button:contains('Log In')").on("click",function(){
			loginCheck();
		});
		
		$(".navbar-form button:contains('Sign Up')").on("click",function(){
			self.location.href="${param.uri}user/addUser";
		});
		
		$("a:contains('�α׾ƿ�')").on("click",function(){
			self.location.href="${param.uri}user/logout";
		});
	
	});

</script>

