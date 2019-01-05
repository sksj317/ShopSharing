<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.*, java.util.*"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%
    	Goods goods = (Goods)request.getAttribute("goods");
    %>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>위탁상품 상세보기</title>
	<link href="./resources/css/detail.css" rel="stylesheet">
  	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  </head>
  <%@ include file="../include/mainTop.jsp" %>
	<script type="text/javascript">
	window.onload = function test1(){
		var replytext = $("#replytext").val();
		var bno = "${goods.goodsNum}"
		var goodMemberId = "${goods.memberId}"
		var param  = "goodsReplyContent="+replytext+"&goodsNum="+bno+"&goodsMemberId="+goodMemberId;
		$.ajax({
			type: "post",
			url : "goodsReplyList.do",
			data : param,
			dataType : "html",
			success:function(result){
				$("#listReply").html(result);
			}
		});
	}

 	function test(){
			var replytext = $("#replytext").val();
			var bno = "${goods.goodsNum}"
			var goodMemberId = "${goods.memberId}"
			var param  = "goodsReplyContent="+replytext+"&goodsNum="+bno+"&goodsMemberId="+goodMemberId;
			$.ajax({
				type: "post",
				url : "goodsReplyInsert.do",
				data : param,
				dataType : "html",
				success:function(result){
					$("#listReply").html(result);
				}
			});
		} 
 	</script>
  <body>

    <div class="container">
      <div class="row">
        <div class="col-lg-3">
          </div>
        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-9" align ="center">
          <div class="card mt-4">
            <img class="card-img-top img-fluid" src="image/${goods.goodsStoredFileName}" width="400" height="500">
            <div class="card-body" align="left">
              <h3 class="card-title"><%=goods.getGoodsName() %></h3>
              <p class="text-muted">상품 등록일 : <fmt:formatDate value="<%=goods.getGoodsReg()%>" pattern="yyyy-MM-dd"/></p>
              <h4>희망 가격 : <%=goods.getGoodsPrice() %>원</h4>
   			</div>
          </div>
          <!-- /.card -->

          <div class="card card-outline-secondary my-4">
            <div class="card-header">
              	상세내용
            </div>
            <div class="card-body">
              <p align="left"><%=goods.getGoodsDetail() %> </p>
              <hr>
               <c:if test= "${sessionScope.memberId !=null }">
              <a href="./goodsContractApply.com?memberId=${goods.memberId}&memberId2=${sessionScope.memberId}&goodsNum=${goods.goodsNum}&goodsName=${goods.goodsName}" class="btn btn-success" >신청</a>
              </c:if>
            </div>
          </div>
          <c:if test= "${sessionScope.memberId !=null }">
            <div class="container">
		        <label for="content" >댓글</label>
			        <form name="commentInsertForm">
			            <div class="input-group">
			               <input type="text" class="form-control" id="replytext"  placeholder="내용을 입력하세요.">
			               <span class="input-group-btn">
			                <button type="button" id="btnReply" onclick="test();" >등록</button>
			               </span>
			            </div>
			        </form>
		    </div>
		    </c:if>            
			<div id ="listReply"></div>
          <!-- /.card -->
        </div>
        <!-- /.col-lg-9 -->
      </div>
    <!-- /.container -->


  </body>
<%@ include file="../include/mainBottom.jsp" %>
</html>