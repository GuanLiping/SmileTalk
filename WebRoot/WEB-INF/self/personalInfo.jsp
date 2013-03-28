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
														<td class="tblInfo" bgcolor="#6D84B4">
															&nbsp;&nbsp;
															<a href="/SmileTalk/profile.do?flag=PersonalInfoUI" class="xh"
																style="color: white">Personal info</a>&nbsp;&nbsp;
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
											<form action="/SmileTalk/profile.do?flag=personalInfoUpdate" method="post">
												<table width="100%" border="0" cellspacing="1"
													cellpadding="10">
													
													
													<tr>
														  <td valign="top" width="140px">
															&nbsp;
															<font class="word2">interest: </font> 
														  </td>
														  <td valign="top">	
															<input type="text" name="interest" value="${user.interest}"/>
															<br />
															&nbsp;
														  </td>
												    </tr>
												    <tr>
														  <td valign="top">
															&nbsp;
															<font class="word2">Like books: </font> 
														  </td>
														  <td valign="top">	
															<input type="text" name="book" value="${user.book}"/>
															<br />
															&nbsp;
														  </td>
												    </tr>
												    <tr>
														  <td valign="top">
															&nbsp;
															<font class="word2">Like music: </font> 
														  </td>
														  <td valign="top">	
															<input type="text" name="music" value="${user.music}"/>
															<br />
															&nbsp;
														  </td>
												    </tr>
												    <tr>
														  <td valign="top">
															&nbsp;
															<font class="word2">Like film: </font> 
														  </td>
														  <td valign="top">	
															<input type="text" name="movie" value="${user.movie}"/>
															<br />
															&nbsp;
														  </td>
												    </tr>
												    <tr>
														  <td valign="top">
															&nbsp;
															<font class="word2">Like cartoon: </font> 
														  </td>
														  <td valign="top">	
															<input type="text" name="cartoon" value="${user.cartoon}"/>
															<br />
															&nbsp;
														  </td>
												    </tr>
												    <tr>
														  <td valign="top">
															&nbsp;
															<font class="word2">Like sports: </font> 
														  </td>
														  <td valign="top">	
															<input type="text" name="sport" value="${user.sport}"/>
															<br />
															&nbsp;
														  </td>
												    </tr>
												    <tr>
														  <td valign="top">
															&nbsp;
															<font class="word2">Like game: </font> 
														  </td>
														  <td valign="top">	
															<input type="text" name="game" value="${user.game}"/>
															<br />
															&nbsp;
														  </td>
												    </tr>
												   <tr>
												      <td></td>
												      <td>
												  
															<input type="submit" value="update" class="sub"/>
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
