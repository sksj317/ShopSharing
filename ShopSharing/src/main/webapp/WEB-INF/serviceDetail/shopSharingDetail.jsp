<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.*, java.util.*"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    Shop shop = (Shop)request.getAttribute("timeList");
    System.out.println("shop1shop1shop1shop1shop1shop1shop1shop1shop1"+shop);
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>점포 상세보기</title> 
  	<link href="./resources/css/detail.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  </head> 
<%@ include file="../include/mainTop.jsp" %>
	<script type="text/javascript">
	window.onload = function test1(){
		var replytext = $("#replytext").val();
		var bno = "${timeList.shopNum}"
		var shopMemberId = "${timeList.memberId}"
		var param  = "shopReplyContent="+replytext+"&shopNum="+bno+"&shopMemberId="+shopMemberId;
		$.ajax({
			type: "post",
			url : "shopReplyList.do",
			data : param,
			dataType : "html",
			success:function(result){
				$("#listReply").html(result);
			}
		});
	}
	
 	function test(){
			var replytext = $("#replytext").val();
			var bno = "${timeList.shopNum}"
			var shopMemberId = "${timeList.memberId}"
			var param  = "shopReplyContent="+replytext+"&shopNum="+bno+"&shopMemberId="+shopMemberId;
			$.ajax({
				type: "post",
				url : "shopReplyInsert.do",
				data : param,
				dataType : "html",
				success:function(result){
					$("#listReply").html(result);
				}
			});
		} 
 	</script>

  <body >
    <div class="container"  >
     <div class="row" align="center" >
      <div class="col-lg-9" >
          <div class="card mt-4">
            <img class="card-img-top" src="image/${timeList.shopStoredFileName}" width="400" height="500">
            <div class="card-body" align="left">
              <h3 class="card-title"><%=shop.getShopName() %></h3>
              <h4>희망 월세 : <%=shop.getShopLentPay() %>원</h4>
              <h6>현재 월세 금액 : <%=shop.getShopMonth() %>원</h6>
              <h6>임대 유형 : <%=shop.getShopLentType() %> </h6>
              <h6>점포 공유 가능 시간 : <%=shop.getShopStartTime() %>시 ~ <%=shop.getShopEndTime() %>시 </h6>
              <h6>점포 보증금액 : <%=shop.getShopDeposit() %>원</h6>
              <h6>점포 등록일 : <fmt:formatDate value="<%=shop.getShopReg() %>" pattern="yyyy-MM-dd"/></h6>
              <p>조회수 : <%=shop.getShopReadCount() %>              
            </div>
          </div>
         
          <div class="card card-outline-secondary my-4">
          	<div class="card-header">
               	 상세내용
            </div>
            <div class="card-body" >
              <p align="left"><%=shop.getShopDetail() %> </p>
              <hr>
              <c:if test= "${sessionScope.memberId !=null }">
              <a  href="./shopContractApply.com?shopNum=${timeList.shopNum}&memberId=${timeList.memberId}&shopName=${timeList.shopName}" class="btn btn-success" >신청</a>
              </c:if>
            </div>
          </div>
         	<c:if test= "${sessionScope.memberId !=null }">
            <div class="container">
		        <label for="content">댓글</label>
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
	  </div> 
	 </div>
    </div>
  </body>
<%@ include file="../include/mainBottom.jsp" %>
</html>