<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page pageEncoding="EUC-KR" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
<head>
	<title>DOG #</title>
	<meta charset="EUC-KR">
	
	<!-- 참조 : http://getbootstrap.com/css/   -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<style>
		body{
			padding-top : 70px;
		}
	</style>
	
	<script type="text/javascript">
		/* $(function(){
			
			$.ajax({
				url : 'product/json/getIndexProductList',
				method : 'get',
				dataType : 'json',
				headers : {
					'Accept' : 'application/json',
					'Content-Type' : 'application/json'
				},
				success : function(data){
					$($('div.carousel-inner > div')[0]).find('img').attr('src','images/uploadFiles/'+(data.NP.fileName!=null ? data.NP.fileName : 'empty'+Math.floor(3*Math.random())+'.GIF'));
					$($('div.carousel-inner > div')[0]).find('input').attr('value',data.NP.prodNo);
					$($('div.carousel-inner > div')[0]).find('div').find('p').text(data.NP.prodName);
					
					$($('div.carousel-inner > div')[1]).find('img').attr('src','images/uploadFiles/'+(data.HP[0].fileName!=null ? data.HP[0].fileName : 'empty'+Math.floor(3*Math.random())+'.GIF'));
					$($('div.carousel-inner > div')[1]).find('input').attr('value',data.HP[0].prodNo);
					$($('div.carousel-inner > div')[1]).find('div').find('p').text(data.HP[0].prodName);
					
					$($('div.carousel-inner > div')[2]).find('img').attr('src','images/uploadFiles/'+(data.RP.fileName!=null ? data.RP.fileName : 'empty'+Math.floor(3*Math.random())+'.GIF'));
					$($('div.carousel-inner > div')[2]).find('input').attr('value',data.RP.prodNo);
					$($('div.carousel-inner > div')[2]).find('div').find('p').text(data.RP.prodName);

					$('.carousel').carousel({
						interval: 1700
					});
					
					$('div.carousel-inner > div > img').on('click',function(){
						self.location.href = 'product/getProduct?menu=search&prodNo='+$(this).parent().find('input:hidden').val();
					});
				}
			});
		}); */
	</script>
</head>

<body>

	<jsp:include page="layout/menubar.jsp"/>
	
	<div class="container">
			 <div class="page-header">
        <h1></h1>
      </div>
      <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
          <li data-target="#carousel-example-generic" data-slide-to="1"></li>
          <li data-target="#carousel-example-generic" data-slide-to="2"></li>
          <li data-target="#carousel-example-generic" data-slide-to="3"></li>
          <li data-target="#carousel-example-generic" data-slide-to="4"></li>
          <li data-target="#carousel-example-generic" data-slide-to="5"></li>
          <li data-target="#carousel-example-generic" data-slide-to="6"></li>
          <li data-target="#carousel-example-generic" data-slide-to="7"></li>
        </ol>
        
        <div class="carousel-inner" role="listbox" align="center">
          <div class="item active">
            <img src="../images\\mainimg\\2.jpg" alt="First slide">
          </div>
          <div class="item">
            <img src="../images\\mainimg\\4.jpg" alt="Second slide">
          </div>
          <div class="item">
            <img src="../images\\mainimg\\5.jpg" alt="Third slide">
          </div>
          <div class="item">
            <img src="../images\\mainimg\\6.jpg" alt="forth slide">
          </div>
          <div class="item">
            <img src="../images\\mainimg\\7.jpg" alt="fifth slide">
          </div>
          <div class="item">
            <img src="../images\\mainimg\\8.jpg" alt="sixth slide">
          </div>
          <div class="item">
            <img src="../images\\mainimg\\9.jpg" alt="seventh slide">
          </div>
          <div class="item">
            <img src="../images\\mainimg\\11.jpg" alt="eighth slide">
          </div>
        </div>
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
      </div>
      <br/><br/><br/><br/><br/>
	<!--  화면구성 div end /////////////////////////////////////-->

</body>

</html>