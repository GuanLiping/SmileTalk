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
				<table width="100%">
					<tr>
						<td width="80%" valign="top">
							<table width="100%" border="0" cellspacing="0" cellpadding="0"
								class="tblDiv">
								<tr>
									<td colspan="2">
										<img src="/SmileTalk/images/front/photo.gif" />
										<font class="word2"> Edit - My Blog </font>
										<br />
										<br />
									</td>
								</tr>
								<tr>
									<td style="border-bottom: 1px #3B5888 solid;" valign="bottom">
										&nbsp;&nbsp;
										<span style="background-color: #3B5888">&nbsp; <a
											href="/xiaonei/addPhoto.jsp?aid=xx" class="xh"
											style="text-decoration: none; color: white;"> Write new blog</a>&nbsp;</span>&nbsp;
										
									</td>
									<td align="right" style="border-bottom: 1px #3B5888 solid;"
										valign="bottom">
										<a href="/SmileTalk/article.do?flag=myArticleUI"
											class="xh">Return to blog list</a>
									</td>
								</tr>
								<tr>
									<td valign="top" colspan="2" align="center">
										<form action="/SmileTalk/article.do?flag=editoneArticleUI" method="post">
											<table width="80%" cellpadding="5" cellspacing="5">
												<tr>
													<td align="left" rowspan="1" width="15%" valign="top">
														<font class="word3"><b>Title：</b></font>
													</td>
													<td>
													    <input type="hidden" name="articleId" value="${article.articleId}"/>
														<input type="text" name="title" class="wby" size="40" value="${article.title}"/>
													</td>
												</tr>
												<tr>
												    <td align="left" rowspan="5" width="15%" valign="top">
														<font class="word3"><b>Content：</b></font>
													</td>
													<td>
														<textarea rows="15" cols="50" name="content">${article.content}</textarea>
													</td>
												</tr>
												
												<tr>
													<td>
														&nbsp;
														<input type="submit" class="sub" value="update"
															style="width: 100px"/>
														<input type="reset" class="sub" value="cancle"
															style="width: 60px"/>
													</td>
													<td>
														
														
													</td>
												</tr>

						
											</table>
										</form>
									</td>
								</tr>
							</table>
						</td>
						<td valign="top" align="center">
							<img src="/SmileTalk/images/front/photoright.jpg" />
						</td>
					</tr>
				</table>
			</div>
		</div>
		<!-- foot.jsp -->
		<jsp:include page="../public/foot.jsp"></jsp:include>
	</body>
</html>
