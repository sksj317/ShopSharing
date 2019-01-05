<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.text.*,model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
Consignment consignment = (Consignment)request.getAttribute("contract");
%>
<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
<title>Insert title here</title>

<%@ include file="../include/mainTop.jsp" %>
<style>
	.bk_table{
		margin-top:100px;
	}
	.bk_table th{
		background:#e0e0e0;
		color:#000;
		font-size:20px;
		padding:5px 0;
		font-weight:bold;
	}
	.bk_table td{
		padding:0 10px;
	}
	.form-group{
		margin-bottom:100px;
	}
</style>
</head>
<body>
<div>
<form:form commandName="consignConCommand" action="consignPayment.com" method="POST">
<table border="1" width ="1000" height="600" align = "center" class="bk_table" >
	
    <tr align ="center">
		<th colspan = "3">위탁판매 계약서</th>
    </tr>
    <tr>
		<td colspan ="1" align = "center" class="tblod">계약 번호</td>
		<td colspan ="2" align = "center">
			<input type ="hidden" name="consignmentNum" value="<c:out value="${contract.consignmentNum }"></c:out>">
			<c:out value="${contract.consignmentNum }"></c:out>
			<input type ="hidden" name="goodsNum" value="<c:out value="${contract.goodsNum }"></c:out>">
			<input type ="hidden" name="shopNum" value="<c:out value="${contract.shopNum }"></c:out>">
			<input type ="hidden" name="shopName" value="<c:out value="${contract.shopName }"></c:out>">
		</td>
		
    </tr>

    <tr>
		<td colspan ="1" align="center" class="tblod">제공 회원</td>
		<td colspan ="2" align="center">
			<input type ="hidden" name="memberId" value="<c:out value="${contract.memberId }"></c:out>">
			<c:out value="${contract.memberId }"></c:out>
		</td>
    </tr>
    <tr>
		<td colspan ="1" align="center" class="tblod">신청 회원</td>
		<td colspan ="2" align="center">
			<input type ="hidden" name="memberId2" value="<c:out value="${contract.memberId2 }"></c:out>">
			<c:out value="${contract.memberId2 }"></c:out>
		</td>
    </tr>
    <tr>
		<td colspan ="1" align="center" class="tblod">상품 이름</td>
		<td colspan ="2" align="center">
			<input type ="hidden" name="goodsName" value="<c:out value="${contract.goodsName }"></c:out>">
			<c:out value="${contract.goodsName }"></c:out>
		</td>
    </tr>
    <tr>
		<td colspan ="1" class="tblod">계약 만료 날짜</td>
		<td colspan ="2" align="center">
			<input type ="hidden" name="consignmentStartPeriod" value="<c:out value="${contract.consignmentStartPeriod}"></c:out>">
			<input type ="hidden" name="consignmentEndPeriod" value="<c:out value="${contract.consignmentEndPeriod }"></c:out>">
			<c:out value="${contract.consignmentEndPeriod }"></c:out>
		</td>	
    </tr>
    <tr>
		<td colspan ="1" class="tblod" >계약 체결 날짜</td>
		<td colspan ="2" align="center">
		<input type ="hidden" value="<c:out value="${contract.consignmentApplyDay }"></c:out>">
		<fmt:formatDate value="${contract.consignmentApplyDay}" pattern="yyyy-MM-dd"/></td>
    </tr>
    <tr>
    	<td colspan="3" align = "center" class="tblod">결제</td>
    </tr>
	 <tr>
		
		<td colspan ="1">위탁 상품 수량</td>
		<td colspan ="2" align="center">
			<input type ="hidden" name="consignmentQuantity" value="<c:out value="${contract.consignmentQuantity }"></c:out>">
			<c:out value="${contract.consignmentQuantity }"></c:out>
		</td>
    </tr>
    <tr>
		<td colspan ="1">위탁 상품 금액</td>
		<td colspan ="2" align="center">
		<input type ="hidden" name="consignmentAmount" value="<c:out value="${contract.consignmentAmount }"></c:out>">
		<c:out value="${contract.consignmentAmount }"></c:out>원</td>
    </tr>
    <tr>
		<td colspan ="1">계좌 이체 은행</td>
		<td colspan ="2"align="center"> 
			<select name="consignBankName">
				<option value= "신한은행">신한 은행 110-422-969882</option>
				<option value= "국민은행">국민 은행 110-422-969882</option>
				<option value= "농협">농협 110-422-969882</option>
				<option value= "수협">수협  110-422-969882</option>
				<option value= "카카오뱅크">카카오뱅크 110-422-969882</option>
			</select>
		</td>
    </tr>
    


</table>
			<div class="form-group" align="justify" style="width: 1000px;margin: 0 auto;padding:20px 0;">
				
				<div class="col-sm-12 control-label" >약관 동의</div>
				<div class="col-sm-12">
					<div class="col-sm-6" data-toggle="buttons" style="float:left;">
						<div class="btn btn-warning active" sytle="dislpay:inline-block;"> <input id="agree"
							type="checkbox" autocomplete="off" checked> <span class="fa fa-check"></span>
						</div> <a href="#">이용약관</a> 에 동의 합니다.
					</div>
					<div class="col-sm-6" style="float:left;text-align: right;">
						<button class="btn btn-primary" type="submit" >
							결제하기<i class="fa fa-check spaceLeft"></i>
						</button>
					</div>
					<div style="clear:both"></div>
				</div>
			</div>
		
		</form:form>
			
</div>
		<%@ include file="../include/mainBottom.jsp" %> 
</body>

</html>