<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>상품 리스트</title>

	<%@ include file="../include/mainTop.jsp" %>
  </head>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>

  <body>

   <!-- Page Content -->
    <div class="container">

      <div class="row">

        <div class="col-lg-3">

          <h1 class="my-4">상품 </h1>
          

        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-9">
          <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
              <div class="carousel-item1 active">
                <img class="d-block img-fluid" src="./resources/image/12345.jpg" alt="First slide" style='height:283px; width:825px'>
              </div>
          </div>
          <div class="row">
			<c:forEach var="saleList" items="${saleList}" varStatus="status">
				<c:if test="${saleList.goodsNum !=null }">
            			<div class="col-lg-4 col-md-6 mb-4">
             				<div class="card h-100">
             					<a href="./consignmentSaleDetail.com?goodsNum=${saleList.goodsNum}"><img class="card-img-top" src="image/${saleList.goodsStoredFileName}" width="180" height="180"></a>
                					<div class="card-body">
                  						<h4 class="card-title">
                   					 	<a href="./consignmentSaleDetail.com?goodsNum=${saleList.goodsNum}"><c:out value="${saleList.goodsName}"  /></a>
                  						</h4>
                  						<h5>희망 가격 : <c:out value="${saleList.goodsPrice}" />원</h5>
                  						<p class="card-text">간략설명 : </p>
                  						<c:out value="${saleList.goodsDetail}" />
                  						<p>조회수 : 
                  						<c:out value="${saleList.goodsReadCount}"></c:out>
                  						</p>
                  					</div>
							</div>
           				</div>
			<%-- <% } %> --%>
					</c:if>

			</c:forEach>
          </div>
          <!-- /.row -->

        </div>
        <!-- /.col-lg-9 -->
        	<tr>
                      <td colspan="8" class="text-center"> 
                          <ul class="pagination" style="margin: 0 auto 30px;">
                             <c:if test="${pageMakerSaleList.prev}">
                                <li><a href="consignmentSaleList.com?page=${pageMakerSaleList.startPage -1}"> < </a></li>
                             </c:if>
                           
                             <c:forEach begin="${pageMakerSaleList.startPage }" end="${pageMakerSaleList.endPage}" var="idx">
                                 <li
                                   <c:out value="${pageMaker.cri.page ==idx? 'class=active' : ''}" />
                                  >
                                   <a href="consignmentSaleList.com?page=${idx}">${idx}</a></li>
                             </c:forEach> 
                              
                             <c:if test="${pageMakerSaleList.next && pageMakerSaleList.endPage >0 }">
                                <li><a href="consignmentSaleList.com?page=${pageMakerSaleList.endPage +1}"> ></a></li>
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
