<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<div class="row">
			<div class="col-lg-12"><jsp:include	page="../include/mainTop.jsp" flush="false" />
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<form class="form-horizontal" action="complaintSubmit.com" method="POST" name="frm">
						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputSub">문의 제목</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="sQnaSub" id="inputSubject" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputDetail">문의	내용</label>
							<div class="col-sm-6">
								<textarea cols="75" rows="10" id="sQnaDetail"
									name="sQnaDetail"></textarea>
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-12 text-center">
								<input type="hidden" name="sQnaNum" id="sQnaNum" value="0" />
								<input type="hidden" name="memberId" id="memberId" value="<%=session.getAttribute("memberId")%>" />
								<button class="btn btn-primary" type="submit">
									작성완료<i class="fa fa-check spaceLeft"></i>
								</button>
								<button class="btn btn-danger" type="cancel">
									뒤로가기<i class="fa fa-times spaceLeft"></i>
								</button>
							</div>
						</div>

					</form>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12"><jsp:include	page="../include/mainBottom.jsp" flush="false" /></div>
		</div>
	</div>
</body>
</html>