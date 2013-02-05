<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>

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
							<div class="divTbl">
								<table width="100%" border="0" 
									class="tblDiv">
									<tr>
										<td colspan="2">
											<table width="100%" border="0" >
												<tr>
													<td rowspan="2" width="10%">
														<a href="profile.do?type=feed&oid=xx"><img
																src="/SmileTalk/images/userhead/u1.gif" width="50px" height="50px" /> </a>
													</td>
													<td>
														<font class="word2"> my album</font><!-- who look -->
														<font class="word2" style="font-weight: normal"> -
															${album.alName} </font>
													</td>
												</tr>
												<tr>
													<td>
														<a href="/SmileTalk/album.do?flag=myAlbumUI&oid=xx&pageNo=1" class="xh">return my album</a>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td>
											<font class="word4">1 -1  / total 2 |</font>
											<a href="/xiaonei/editAlbum.jsp?aid=xxx" class="xh">edit album</a>
											|
											<a href="/xiaonei/addPhoto.jsp?aid=xxx" class="xh">upload picture</a>

										</td>
										<td align="right">
											<table border="0">
												<tr>
													<td>
														<font class="word2" style="font-size: 12px">x page</font>
													</td>
													<td>
														<font class="word2" style="font-size: 12px">x page</font>
													</td>
													<td>
														<a href="album.do?type=oneAlbum&pageNo=1&oid=xx&aid=xx"
															class="xh"> << 1 </a>
													</td>
													<td>
														...
													</td>
													<td>
														<a href="album.do?type=oneAlbum&pageNo=xx&oid=xx&aid=xx"
															class="xh"> < Last</a>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td valign="top" colspan="2"
											style="border-top: 1px #D8DFEA solid; border-bottom: 1px #D8DFEA solid;">
											<table width="100%">
												<tr>
													<c:forEach var="photo" items="${photoList}" varStatus="vs">
													<td width="20%" align="center">
														<a
															href="/SmileTalk/album.do?flag=onePhotoUI&uid=${user.userId }&pid=${photo.album.alId }&pP=${photo.PPhoto}&pageNo=1"
															style="border: 1px #D8DFEA solid;"
															onmouseover="chgImg(this)" onmouseout="chgImg2(this)"
															id="a x"> <img src="/SmileTalk/images/${user.userId }/album/${photo.album.alId }/${photo.PPhoto}"
																width="100px" height="75px" alt="xxxx"
																style="border: 5px #FFFFFF solid;" id="aa+xxxx" /> </a>
													</td>
													<c:if test="${vs.count%6==0}"></tr><tr></c:if>
													</c:forEach>
												</tr>

											</table>
											<!-- 如果没有照片显示这句话 
											<font class="word3"> 没有照片</font>-->
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<font class="word4">${album.alDescription}</font>
										</td>
									</tr>
									<tr>
										<td>
											&nbsp;
										</td>
										<td align="right">
											<table border="0">
												<tr>
													<td>
														<font class="word2" style="font-size: 12px">x</font>
													</td>
													<td>
														<font class="word2" style="font-size: 12px">Total x</font>
													</td>
													<td>
														<a href="album.do?type=oneAlbum&pageNo=1&oid=xx&aid=xx"
															class="xh"> << 1 </a>
													</td>
													<td>
														...
													</td>
													<td>
														<a href="album.do?type=oneAlbum&pageNo=xx&oid=xx&aid=xx"
															class="xh"> < Last</a>
													</td>
											</table>
										</td>
									</tr>
								</table>
							</div>
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
