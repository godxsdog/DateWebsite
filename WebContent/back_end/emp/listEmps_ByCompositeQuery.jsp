<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.emp.model.*"%>
<%
	Emp emp = (Emp) request.getAttribute("emp");
	pageContext.setAttribute("emp", emp);
%>

<jsp:useBean id="listEmps_ByCompositeQuery" scope="request"
	type="java.util.List" />

<html>
<head>
<%@ include file="empHeader.file"%>
<title>�ƦX�d�� - listEmps_ByCompositeQuery.jsp</title>
</head>
<body>











	<%@ include file="/back_end/backEndNavBar.file"%>

	<div class="container-fluid">
		<div class="row">
		
		<%@ include file="/back_end/backEndLSide.file"%>
			

			<div class="col-xs-12 col-sm-8">


				<h5 class="page-header text-right"></h5>


				<div class="row">

					<div class="panel panel-info">

						<div class="panel-heading">
							<h3 class="panel-title">${emp.empName}</h3>
						</div>

						<div class="panel-body">


							<div class="row">

								<div class=" col-md-9 col-lg-9 ">
									<tbody>


													<h3>
														���u�d�ߵ��G
													</h3>



										<table border='1' bordercolor='#CCCCFF' width='800'>
											<tr>
												<th>���u�s��</th>
												<th>���u�m�W</th>
												<th>¾��</th>
												<th>���Τ��</th>
												<th>Email</th>
												<th>�ק�</th>
												<th>�R��</th>
											</tr>
											<%@ include file="pages/page1_ByCompositeQuery.file"%>
											<c:forEach var="empVO" items="${listEmps_ByCompositeQuery}"
												begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
												<tr align='center' valign='middle'>
													<!--�N�ק諸���@���[�J����Ӥw-->
													<td>${empVO.empNo}</td>
													<td>${empVO.empName}</td>
													<td>${empVO.empJob}</td>
													<td>${empVO.empHireDate}</td>
													<td>${empVO.empEmail}</td>


													<td>
														<FORM METHOD="post"
															ACTION="<%=request.getContextPath()%>/back_end/emp/EmpServlet.do">
															<input type="submit" value="�ק�"> <input
																type="hidden" name="empno" value="${empVO.empNo}">
															<input type="hidden" name="requestURL"
																value="<%=request.getServletPath()%>">
															<!--�e�X�����������|��Controller-->
															<input type="hidden" name="whichPage"
																value="<%=whichPage%>">
															<!--�e�X���e�O�ĴX����Controller-->
															<input type="hidden" name="action"
																value="getOne_For_Update">
														</FORM>
													</td>
													<td>
														<FORM METHOD="post" id="empSuspend${empVO.empNo}"
															ACTION="<%=request.getContextPath()%>/back_end/emp/EmpServlet.do">
															<a href='#' data-toggle="modal" data-target="#deleteModal${empVO.empNo}"> 
															<input type="button" value="���v"> 
															</a>
															<input type="hidden" name="empno" value="${empVO.empNo}">
															<input type="hidden" name="requestURL"
																value="<%=request.getServletPath()%>">
															<!--�e�X�����������|��Controller-->
															<input type="hidden" name="whichPage"
																value="<%=whichPage%>">
															<!--�e�X���e�O�ĴX����Controller-->
															<input type="hidden" name="action" value="delete">
														</FORM>
													</td>
												</tr>
												
												
												
												
											<!-- ���u���vModal-->
												<div class="modal fade" id="deleteModal${empVO.empNo}"
													role="dialog">
													<div class="modal-dialog">

														<!-- Modal content-->
														<div class="modal-content">
															<div class="modal-header">
																<button type="button" class="close" data-dismiss="modal">&times;</button>
																<h4 class="modal-title">���u���v</h4>
															</div>
															<div class="modal-body">
																<p>�T�w���v��?</p>
															</div>
															<div class="modal-footer">


																<button type="button" class="btn btn-primary"
																	data-dismiss="modal" id='deletebtn'
																	onclick="document.getElementById('empSuspend${empVO.empNo}').submit();">�R��</button>
																
																<button type="button" class="btn btn-warning" data-dismiss="modal">����</button>
															</div>
														</div>

													</div>
												</div>
												
												
												
											</c:forEach>
										</table>
										<%@ include file="pages/page2_ByCompositeQuery.file"%>


									</tbody>


									<c:if test="${not empty errorMsgs}">
										<font color="red">
											<ul>
												<c:forEach var="message" items="${errorMsgs}">
													<li>${message}</li>
												</c:forEach>
											</ul>
										</font>
									</c:if>
									
									


								</div>
							</div>
						</div>
					</div>
				</div>



			</div>

			<script src="https://code.jquery.com/jquery.js"></script>
			<script
				src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

			<script>
				
			</script>
</body>
</body>
</html>