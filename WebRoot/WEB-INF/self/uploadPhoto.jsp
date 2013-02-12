<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


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
														<td class="tblInfo"
															style="border-left: 1px #898989 solid;">
															&nbsp;&nbsp;
															<a href="/SmileTalk/profile.do?flag=BasicInfoUI " class="xh"
																style="color: black">Basic info</a>&nbsp;&nbsp;
														</td>
														<td class="tblInfo" >
															&nbsp;&nbsp;
															<a href="/SmileTalk/profile.do?flag=ContactInfoUI" class="xh"
																style="color:black">Contact info</a>&nbsp;&nbsp;
														</td>
														<td class="tblInfo">
															&nbsp;&nbsp;
															<a href="/SmileTalk/profile.do?flag=PersonalInfoUI" class="xh"
																style="color:black">Personal info</a>&nbsp;&nbsp;
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
														<td class="tblInfo" bgcolor="#6D84B4">
															&nbsp;&nbsp;
															<a href="/self/upload.jsp" class="xh"
																style="color: white">Upload picture</a>&nbsp;&nbsp;
														</td>
													</tr>
												</table>
											</div>
										</td>
									</tr>


									<tr>
										<td>
											<form action="/SmileTalk/profile.do?flag=uploadPhoto" method="post"
												enctype="multipart/form-data">
												<table width="100%" border="0" cellspacing="1"
													cellpadding="10">
													<tr>
														<td width="40%">
															&nbsp;
															<font class="word2">present picture</font>
														</td>
														<td>
															&nbsp;
															<font class="word2">upload picture </font>
														</td>
													</tr>
													<tr>
														<td valign="top">
															&nbsp;
															<font class="word3">You can choose from your <a href="" class="xh">profile alum</a> as profile picture</font>
															<br />
															<img src="/SmileTalk/images/${user.userId }/head/${user.photo }?abc=<%=Math.random() %>" width="200"
																height="200" />
														</td>
														<td valign="top">
															&nbsp;
															<font class="word3">You can upload your real picture</font>
															<br />
															&nbsp;
															<input type="file" class="wby" name="myphoto" />
															<br />
															&nbsp;
															<font class="word3">support  JPG,JPEG,GIF,BMP and PNG
																 max is 4M. If it bigger than border, the extra part will be cut.</font>
															<br />
															<br />
															<input type="submit" value="upload" class="sub" />
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
