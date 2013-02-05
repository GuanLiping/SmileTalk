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
					<table width="100%" border="0" cellspacing="0" cellpadding="5"
						>
						<tr>
							<td  style="border-bottom: 1px #898989 solid;">
								<img src="/SmileTalk/images/front/photo.gif" />
								<font class="word2" > Upload new photo
								</font>
							</td>
						</tr>
						<tr>
							<td >
								<img src="/SmileTalk/images/front/photo.gif" />
								<font class="word2" > Create Album
								</font>
							</td>
						</tr>
						<tr>
							<td valign="top"  align="center" style="border-bottom: 1px #D8DFEA solid;">
								<form action="/SmileTalk/album.do?flag=addPhotoUI" method="post">
								<table width="80%" cellpadding="5" cellspacing="5" border="0">
								
									<tr>
										<td align="right" width="20%">
											<font class="word3" style="font-weight: bold;">Album name:</font>
										</td>
										<td align="left">
											<input type="text" id="aname" name="name" class="wby" size="30" />
										</td>
									</tr>
									<tr>
										<td align="right" valign="top">
											<font class="word3" style="font-weight: bold;">Description:</font>
										</td>
										<td align="left">
											<textarea class="wbq" name="descript" id="adesc"></textarea>
										</td>
									</tr>
									<tr>
										<td align="right">
											<font class="word3" style="font-weight: bold;">Limits of authority:</font>
										</td>
										<td align="left">
											<select style="width: 200px">
												<option>
													Only me
												</option>
												<option>
													My freind
												</option>
												<option selected="selected">
													All
												</option>
											</select>
										</td>
									</tr>
									<tr>
										<td>
											&nbsp;
										</td>
										<td align="left">
											<input type="submit" class="sub" value="create album"
												style="width: 100px" />
											<input type="reset" class="sub" value="cancle"
												style="width: 60px" />
										</td>
									</tr>
								</table>
								</form>
							</td>

						</tr>
						<tr>
							<td >
								<img src="/SmileTalk/images/front/photo.gif" />
								<font class="word2" > Choose Album
								</font>
							</td>
						</tr>
						<tr>
							<td valign="top"  align="center" style="border-bottom: 1px #D8DFEA solid;">
								<table width="80%" cellpadding="5" cellspacing="5">
								
									<tr>
										<td align="right" width="20%">
											<font class="word3" style="font-weight: bold;">choose album:</font>
										</td>
										<td align="left">
											<select id="selal" style="width: 200px" >
												<!-- which you have -->
											</select>
										</td>
									</tr>
									<tr>
										<td>
											&nbsp;
										</td>
										<td align="left">
											<input type="button" class="sub" value="continue"
												style="width: 60px" onclick="addphoto()" />
											<input type="reset" class="sub" value="cancle"
												style="width: 60px" />
										</td>
									</tr>
								</table>
							</td>

						</tr>

					</table>
				</td>
				<td valign="top" align="center">
					<img src="/SmileTalk/images/front/albumright.jpg" />
				</td>
				</tr>
				</table>
			</div>
		</div>
		<!-- 引入foot.jsp -->
		<jsp:include page="../public/foot.jsp"></jsp:include>
	</body>
</html>
