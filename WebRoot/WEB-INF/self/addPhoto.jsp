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
										<font class="word2"> Edit - My album </font>
										<br />
										<br />
									</td>
								</tr>
								<tr>
									<td style="border-bottom: 1px #3B5888 solid;" valign="bottom">
										&nbsp;&nbsp;
										<span style="background-color: #3B5888">&nbsp; <a
											href="/xiaonei/addPhoto.jsp?aid=xx" class="xh"
											style="text-decoration: none; color: white;"> Upload new photo</a>&nbsp;</span>&nbsp;
										<span onmouseover="this.style.backgroundColor='#D8DFEA';"
											onmouseout="this.style.backgroundColor='#FFFFFF';">&nbsp;
											<a href="/xiaonei/editAlbum.jsp?aid=xx" class="xh"
											style="text-decoration: none;"> Edit album info</a>&nbsp;</span>&nbsp;
										<span onmouseover="this.style.backgroundColor='#D8DFEA';"
											onmouseout="this.style.backgroundColor='#FFFFFF';">&nbsp;
											<a href="javascript:void(0);" class="xh"
											style="text-decoration: none;"
											onclick="document.all.divda.style.display=''"> Delete album</a>&nbsp;</span>
									</td>
									<td align="right" style="border-bottom: 1px #3B5888 solid;"
										valign="bottom">
										<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xxx"
											class="xh">Return to Album</a>
									</td>
								</tr>
								<tr>
									<td valign="top" colspan="2" align="center">
										<form action="/SmileTalk/album.do?flag=oneAlbumUI" method="post"
											enctype="multipart/form-data">
											<table width="80%" cellpadding="5" cellspacing="5">
												<tr>
													<td align="left" rowspan="5" width="20%" valign="top">
														<font class="word3"><b>Upload picture：</b> <br /> You can choose JPG,
															JPEG, GIF, PNG and BMP</font>
													</td>
													<td>
														<input type="file" name="photo1" class="wby" size="40" />
													</td>
												</tr>
												<tr>
													<td>
														<input type="file" name="photo2" class="wby" size="40" />
													</td>
												</tr>
												<tr>
													<td>
														<input type="file" name="photo3" class="wby" size="40" />
													</td>
												</tr>
												<tr>
													<td>
														<input type="file" name="photo4" class="wby" size="40" />
													</td>
												</tr>
												<tr>
													<td>
														<input type="file" name="photo5" class="wby" size="40" />
													</td>
												</tr>
												<tr>
													<td>
														&nbsp;
														<input type="hidden" name="id" value="${album.alId }" />
													</td>
													<td>
														<input type="submit" class="sub" value="upload"
															style="width: 100px"/>
														<input type="reset" class="sub" value="cancle"
															style="width: 60px"/>
													</td>
												</tr>

												<tr>
													<td align="center" colspan="2">
														<font class="word3">every time upload , max is 15MB，if you failed , try smaller picture.</font>
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
		<!-- 引入foot.jsp -->
		<jsp:include page="../public/foot.jsp"></jsp:include>
	</body>
</html>
