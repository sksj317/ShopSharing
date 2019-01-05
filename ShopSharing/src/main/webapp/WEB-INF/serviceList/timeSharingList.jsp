<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

  <head>
	
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>점포  리스트</title>
  	
  	<%@ include file="../include/mainTop.jsp" %>

  	</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
  <body >

    
    <!-- Page Content -->
    <div class="container">

      <div class="row">

        <div class="col-lg-3">

          <h1 class="my-4">시간제 공유</h1>
          <div class="list-group">
            <a href="timeSharingList.com" class="list-group-item">시간제 공유</a>
            <a href="shopInShopList.com" class="list-group-item">샵 인 샵</a>
            <a href="menuTestList.com" class="list-group-item">메뉴 테스트</a>
          </div>

        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-9">

          <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item1 active">
                <img class="d-block img-fluid" src="./resources/image/shopSharing.png" alt="First slide">
              </div>
            
            </div>
           
          </div>

          <div class="row">
			<%-- <%for(int i=0;i<9 ;i++){ %> --%>
			<c:forEach var="timeList" items="${timeList}" varStatus="status">
				<c:if test="${timeList.shopNum !=null }">
					<c:if test="${timeList.shopLentType =='점포공유' }">
            			<div class="col-lg-4 col-md-6 mb-4">
             				<div class="card h-100">
             					<a href="./timeSharingDetail.com?shopNum=${timeList.shopNum}"><img class="card-img-top" src="image/${timeList.shopStoredFileName}" width="180" height="180"></a>
                					<div class="card-body">
                  						<h4 class="card-title">
                   					 	<a href="./timeSharingDetail.com?shopNum=${timeList.shopNum}"><c:out value="${timeList.shopName}"  /></a>
                  						</h4>
                  						<h5>희망 월세 : <c:out value="${timeList.shopLentPay}" />원</h5>
                  						<p class="card-text">간략설명 : </p>
                  						<c:out value="${timeList.shopDetail}" />
                  						<p>조회수 : 
                  						<c:out value="${timeList.shopReadCount}"></c:out>
                  						</p>
                  						<p>작성자 : <c:out value="${timeList.memberId}" /> </p>
                  						
                  					</div>
							</div>
           				</div>
			<%-- <% } %> --%>
					</c:if>
				</c:if>
			</c:forEach>
         </div>
          <!-- /.row -->

        </div>
        <!-- /.col-lg-9 -->
					<tr>
                      <td colspan="8" class="text-center"> 
                          <ul class="pagination" style="margin: 0 auto 30px;">
                             <c:if test="${pageMaker.prev}">
                                <li><a href="timeSharingList.com?page=${pageMaker.startPage -1}"> < </a></li>
                             </c:if>
                           
                             <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage}" var="idx">
                                 <li
                                   <c:out value="${pageMaker.cri.page ==idx? 'class=active' : ''}" />
                                  >
                                   <a href="timeSharingList.com?page=${idx}">${idx}</a></li>
                             </c:forEach> 
                              
                             <c:if test="${pageMaker.next && pageMaker.endPage >0 }">
                                <li><a href="timeSharingList.com?page=${pageMaker.endPage +1}"> ></a></li>
                             </c:if>
                           
                          </ul>
                      </td>
                    </tr>
      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

   

  </body>

	<%@ include file="../include/mainBottom.jsp" %>

</html>
