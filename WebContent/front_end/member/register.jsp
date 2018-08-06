<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="BIG5"%>
<html lang="en">
<%@ page import="com.member.model.*"%>
<%@ page import="com.pet.model.*"%>
<head>
<% 
Member mem=(Member)request.getAttribute("fMem");
Pet pet=(Pet)request.getAttribute("fPet");
String fCounty=(String)request.getAttribute("fCounty");
String fDistrict=(String)request.getAttribute("fDistrict");
pageContext.setAttribute("mem", mem);
pageContext.setAttribute("pet", pet);
pageContext.setAttribute("fCounty", fCounty);
pageContext.setAttribute("fDistrict", fDistrict);
%>

<%@ include file="memHead.file"%>
<%@ include file="registerTest.file"%>
<title>�d�� You & Me</title>
 <script src="<%=request.getContextPath() %>/front_end/js/jquery.twzipcode.min.js"></script> 

 
 <style>

.select-style {
    padding: 0;
    margin: 0;
    border: 1px solid #ccc;
    width: 200px;
    border-radius: 3px;
    overflow: hidden;
    background-color: #fff;

    background: #fff url("http://www.scottgood.com/jsg/blog.nsf/images/arrowdown.gif") no-repeat 90% 50%;
}

.select-style select {
    padding: 5px 8px;
    width: 130%;
    border: none;
    box-shadow: none;
    background-color: transparent;
    background-image: none;
    -webkit-appearance: none;
       -moz-appearance: none;
            appearance: none;
}

.select-style select:focus {
    outline: none;
}






.zipcode {
	display:none;
}
.county {
    background-color: #4169E1;
    color: #fff;
}
.district {
    background-color: #008000;
    color: #fff;
}
</style>


<style type="text/css">
	div.inline { float:left; }
	.clearBoth { clear:both; }
</style>


 
</head>

<body>
	<!-- Navigation -->
	<%@ include file="/front_end/frontEndNavBar.file"%>


	<div class="container frontend">


		<div class="row main">

			<div class="col-sm-6 col-sm-offset-3">

				<form class=""
					action="<%=request.getContextPath()%>/front_end/member/member.do"
					method="post" enctype="multipart/form-data" id="register">

					<div class="row">

						<div class="col-sm-6 form-group">
							<label for="memId" class="cols-sm-2 control-label">�b��</label><span
								id="memIdShow"></span>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa"
										aria-hidden="true"></i></span> <input type="text"
										class="form-control" name="memId" id="memId"
										placeholder="�b�����׻ݤj��4" value="<%= (mem==null)? "" : mem.getMemId() %>" required />
								</div>
							</div>
						</div>

						<div class="col-sm-6 form-group">
							<label for="memSname" class="cols-sm-2 control-label">�ʺ�</label><span
								id="memSnameShow"></span>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
										type="text" class="form-control" name="memSname" id="memSname"
										placeholder="�п�J�ʺ�" value="<%= (mem==null)? "" : mem.getMemSname() %>" required />
								</div>
							</div>
						</div>
					</div>


					<div class="row">
						<div class="col-sm-6 form-group">
							<label for="memPwd" class="cols-sm-2 control-label">�K�X</label><span
								id="memPwdShow"></span>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="fa fa-envelope fa" aria-hidden="true"></i></span> <input
										type="password" class="form-control" name="memPwd" id="memPwd"
										placeholder="�K�X���׻ݤj��4" value="<%= (mem==null)? "" : mem.getMemPwd() %>" required />
								</div>
							</div>
						</div>

						<div class="col-sm-6 form-group">
							<label for="conpwd" class="cols-sm-2 control-label">�T�{�K�X</label><span
								id="conPwdShow"></span>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="fa fa-users fa" aria-hidden="true"></i></span> <input
										type="password" class="form-control" name="conpwd" id="conPwd"
										placeholder="�ЦA����J�K�X" value="<%= (mem==null)? "" : mem.getMemPwd() %>" required />
								</div>
							</div>
						</div>
					</div>


					<div class="row">
						<div class="col-sm-6 form-group">
							<label for="memName" class="cols-sm-2 control-label">�m�W</label><span
								id="memNameShow"></span>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
										type="text" class="form-control" name="memName" id="memName"
										placeholder="�п�J�z���m�W" value="<%= (mem==null)? "" : mem.getMemName() %>" required />
								</div>
							</div>
						</div>



						<div class="col-sm-6 form-group">
							<label for="memIdNo" class="cols-sm-2 control-label">�����Ҧr��</label><span
								id="memIdNoShow"></span>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
										type="text" class="form-control" name="memIdNo" id="memIdNo"
										placeholder="�п�J�����Ҧr��" value="<%= (mem==null)? "" : mem.getMemIdNo() %>" required />
								</div>
							</div>
						</div>
					</div>




					<div class="row">
						<div class="col-sm-6 form-group">
							<label for="memBday" class="cols-sm-2 control-label">�ͤ�</label><span
								id="memBdayShow"></span>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
										name="memBday" id="memBday" class="form-control"
										placeholder="Confirm your Password" value="<%= (mem==null)? "" : mem.getMemBday() %>" required />
								</div>
							</div>
						</div>


						<div class="col-sm-6 form-group">
							<label for="memPhone" class="cols-sm-2 control-label">���</label><span
								id="memPhoneShow"></span>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
										type="text" class="form-control" name="memPhone" id="memPhone"
										placeholder="�п�J�z�����" value="<%= (mem==null)? "" : mem.getMemPhone() %>" required />
								</div>
							</div>
						</div>
					</div>


					<div class="form-group">
						<label for="memGender" class="control-label">�ʧO</label><br> <label
							class="radio-inline"><input type="radio" name="memGender"
							checked="true" value="0">�k</label> <label class="radio-inline"><input
							type="radio" id="girlMem" name="memGender" value="1">�k</label> <label
							class="radio-inline"><input type="radio" name="memGender"
							value="2">�ĤT��</label>
					</div>


					<div class="form-group">
						<label for="memAddress" class="cols-sm-2 control-label">�a�}</label><span
							id="memAddressShow"></span>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
<!-- 									<div id="twzipcode" class="selectpicker"></div> -->
									
									<div id="twzipcode">

									  	<div class="select-style inline">
									  	<div data-role="county" data-style="Style Name" data-value="110"></div>
									  	</div>
									  	<div class="select-style inline">								
  										<div data-role="district" data-style="Style Name" data-value="�O�_��"></div>
  										</div>
<!--   										<div data-role="zipcode" data-style="Style Name" data-value="�H�q��"></div> -->
										 <input
										type="text" class="form-control" name="memAddress" id="memAddress"
										placeholder="�п�J�a�}" value="<%= (mem==null)? "" : mem.getMemAddress() %>" required />
										</span> 
									</div>
									
									
									
<!-- 								<textarea class="form-control" id="memAddress" name="memAddress" -->
<%-- 									placeholder="�п�J�z���a�}" required><%= (mem==null)? "" : mem.getMemAddress() %></textarea> --%>
							</div>
						</div>
					</div>


					<div class="form-group">
						<label for="memEmail" class="cols-sm-2 control-label">�q�l�H�c</label><span
							id="memEmailShow"></span>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
									type="text" class="form-control" name="memEmail" id="memEmail"
									placeholder="�п�J�z���q�l�H�c" value="<%= (mem==null)? "" : mem.getMemEmail() %>" required />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-6 form-group">
							<label for="memImg" class="control-label ">�Ӥ�</label><span
								id="memImgShow"></span> <br> <input type="file"
								name="memImg" id="memImg" placeholder="" /> <img
								src="https://api.fnkr.net/testimg/350x200/00CED1/FFF/?text=img+placeholder"
								height="200px" width="150px" id="memPic" style="margin-top: 5px"><br>
						</div>

						<div class="col-sm-6 form-group">
							<label for="petOrNot" class="control-label">���L�i�d��</label><br>
							<label class="radio-inline"><input type="radio"
								name="petOrNot" id="petOrNot_0" value="0" checked="true">�L</label>
							<label class="radio-inline"><input type="radio"
								name="petOrNot" id="petOrNot_1" value="1">��</label>
						</div>
					</div>

					<div id="petDiv" style="display: none;">
						<div class="form-group">
							<label for="petName" class="cols-sm-2 control-label">�d���m�W</label><span
								id="petNameShow"></span>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
										type="text" class="form-control" name="petName" value="<%= (pet==null)? "" : pet.getPetName() %>" id="petName"
										placeholder="�п�J�z���d���m�W" />
								</div>
							</div>
						</div>


						<div class="row">
							<div class="col-sm-6 form-group">
								<label for="petKind" class="control-label">�d������</label><br>
								<label class="radio-inline"><input type="radio"
									name="petKind" id="petOrNot_0" value="��" checked="true">��</label>
								<label class="radio-inline"><input type="radio"
									name="petKind" id="petOrNot_1" value="��">��</label> <label
									class="radio-inline"><input type="radio" name="petKind"
									id="petOrNot_2" value="��L">��L</label>
							</div>


							<div class="col-sm-6 form-group">
								<label for="petGender" class="control-label">�d���ʧO</label><br>
								<label class="radio-inline"><input type="radio"
									name="petGender" value="0" checked="true">�k</label> <label
									class="radio-inline"><input type="radio"
									name="petGender" value="1">�k</label>
							</div>

						</div>


						<div class="form-group">
							<label for="petImg" class="control-label">�d���Ӥ�</label><span
								id="petImgShow"></span><br> <input type="file"
								name="petImg" id="petImg" /> <img
								src="https://api.fnkr.net/testimg/350x200/00CED1/FFF/?text=img+placeholder"
								height="200px" width="150px" id="petPic" style="margin-top: 5px"><br>

						</div>

					</div>

					<input type="hidden" name="action" value="register">


					<!-- 					google Invisible reCAPTCHA  -->
					<div id='recaptcha' class="g-recaptcha"
						data-sitekey="6LeBbC0UAAAAAEd3C3R3zbSpsfxg2A7zZarw2mZT"
						data-callback="onSubmit" data-size="invisible"></div>
					<button id='sub'
						class="btn btn-primary btn-lg btn-block login-button">���U</button>

				</form>
				<%-- ���~���C --%>
				<c:if test="${not empty errorMsgs}">
					<font color='red'>�Эץ��H�U���~:
						<ul>
							<c:forEach var="message" items="${errorMsgs}">
								<li>${message}</li>
							</c:forEach>
						</ul>
					</font>s
				</c:if>

				<button type="button" class="btn btn-info" id="autoAddMem"
					style="margin-top: 10px">�s�W�@��|��</button>
				<button type="button" class="btn btn-info" id="autoAddMemPet"
					style="margin-top: 10px">�s�W�d���|��</button>

			</div>
		</div>


	</div>
	<%@ include file="/front_end/frontEndButtom.file"%>


	<script>
		function onSubmit(token) {
			document.getElementById('register').submit();
		}

		function validate(event) {

			event.preventDefault();
			grecaptcha.execute();
		}

		function onload() {
			var element = document.getElementById('sub');
			element.onclick = validate;
		}
	</script>
	<script src="https://www.google.com/recaptcha/api.js" async defer></script>


	<script>
		onload();
	</script>


	<script>
		$(function() {

			$("#memBday").datetimepicker({
				format : 'Y-m-d',
				timepicker : false,
				maxDate : '0',
			});


			
			$('#twzipcode').twzipcode({
			    // �̧ǮM�Φܿ����B�m�����Ϥζl���ϸ���
			 'css': ['county', 'district', 'zipcode'],
		    'countySel': '${fCounty}', 
		    'districtSel': '${fDistrict}'
			});
			
		});
		

		

		
	</script>
		



</body>

</html>