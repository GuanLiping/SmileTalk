<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<link rel="stylesheet" href="/SmileTalk/css/css/updPersonInfo.css" type="text/css"></link>
	</head>
	<body>

		<jsp:include page="head.jsp"></jsp:include>
		<div class="info_main">
			<div class="info_left">
				<table width="100%" border="0" cellspacing="1" cellpadding="10">
					<tr>
						<td valign="top">
							<div class="divTbl">
								<table width="100%" border="0" cellspacing="1" cellpadding="10"
									class="tblDiv">
									<tr>
										<td valign="bottom">
											<div style="border-bottom: 1px #CCCCCC solid;">
												&nbsp;&nbsp;&nbsp;
												<table border="0" cellspacing="0" cellpadding="2">
													<tr>
														<td>
															&nbsp;&nbsp;
														</td>
														<td class="tblInfo" bgcolor="#6D84B4"
															style="border-left: 1px #898989 solid;">
															&nbsp;&nbsp;
															<a href="/SmileTalk/profile.do?flag=BasicInfoUI " class="xh"
																style="color: white">Basic info</a>&nbsp;&nbsp;
														</td>
														<td class="tblInfo">
															&nbsp;&nbsp;
															<a href="/self/contactInfo.jsp" class="xh"
																style="color: black">Contact info</a>&nbsp;&nbsp;
														</td>
														<td class="tblInfo">
															&nbsp;&nbsp;
															<a href="/self/personalInfo.jsp" class="xh"
																style="color: black">Personal info</a>&nbsp;&nbsp;
														</td>
														<td class="tblInfo">
															&nbsp;&nbsp;
															<a href="getReady.do?type=edu" class="xh"
																style="color: black">Education info</a>&nbsp;&nbsp;
														</td>
														<td class="tblInfo">
															&nbsp;&nbsp;
															<a href="/self/myWorkInfo.jsp" class="xh"
																style="color: black">Work info</a>&nbsp;&nbsp;
														</td>
														<td class="tblInfo">
															&nbsp;&nbsp;
															<a href="/SmileTalk/profile.do?flag=UploadPhotoUI" class="xh"
																style="color: black">Upload picture</a>&nbsp;&nbsp;
														</td>
													</tr>
												</table>
											</div>
										</td>
									</tr>


									<tr>
										<td>
											<form action="/SmileTalk/profile.do?flag=basicInfoUpdate" method="post">
												<table width="100%" border="0" cellspacing="1"
													cellpadding="10">
													
													<tr>
														  <td valign="top">
															&nbsp;
															<font class="word2">name: </font> 
															<input type="text" name="name" value="${user.name}"/>
															<br />
															&nbsp;
															<font class="word2">sex: </font>&nbsp;
															<input type="text" name="sex" value="${user.sex}"/>
															<br />
															&nbsp;
															<div style="display:none;">
															<fmt:formatDate value="${user.birth}" type="date" pattern="yyyy-MM-dd" var="birthday"/>
															</div>
															<font class="word2">Birthday: </font> <input type="text" name="birth" value="${birthday}"/>
															&nbsp;<font class="word3">YYYY-MM-DD</font>
															<br />
															
															
															<br />
															<br />
															&nbsp;&nbsp;
															<input type="submit" value="update" class="sub" />
														</td>
													</tr>
												</table>
											</form>
										</td>
									</tr>
								</table>
							</div>
						</td>
						<td align="center">
							<img src="/SmileTalk/images/front/selfright.jpg" />
						</td>
					</tr>
				</table>

			</div>
		</div>
		<!-- 引入foot.jsp -->
		<jsp:include page="../public/foot.jsp"></jsp:include>
	</body>
</html>
