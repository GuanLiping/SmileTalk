<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<link rel="stylesheet" href="/SmileTalk/css/css/updPersonInfo.css" type="text/css"></link>
	</head>
	<body>
		<jsp:include page="../self/head.jsp"></jsp:include>
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
														<a href="/SmileTalk/album.do?flag=friendAlbumUI&fid=${user.userId}&pageNo=1" class="xh">return his album list</a>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td>
											<font class="word4"> total ${fn:length(photoList)} </font>
											
										</td>
										<td align="right">
											<table border="0">
												<tr>
													<td>
														<font class="word2" style="font-size: 12px"></font>
													</td>
													<td>
														<font class="word2" style="font-size: 12px"></font>
													</td>
													<td>
														<a href="album.do?type=oneAlbum&pageNo=1&oid=xx&aid=xx"
															class="xh"></a>
													</td>
													<td>
														
													</td>
													<td>
														<a href="album.do?type=oneAlbum&pageNo=xx&oid=xx&aid=xx"
															class="xh"> </a>
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
															href="/SmileTalk/album.do?flag=friendOnePhotoUI&uid=${user.userId }&aid=${photo.album.alId }&pP=${photo.PPhoto}&pid=${photo.PId}"
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
											<!-- 
											<font class="word3"></font>-->
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
														<font class="word2" style="font-size: 12px"></font>
													</td>
													<td>
														<font class="word2" style="font-size: 12px">Total ${fn:length(photoList)}</font>
													</td>
													<td>
														<a href="album.do?type=oneAlbum&pageNo=1&oid=xx&aid=xx"
															class="xh">  </a>
													</td>
													<td>
														
													</td>
													<td>
														<a href="album.do?type=oneAlbum&pageNo=xx&oid=xx&aid=xx"
															class="xh"> </a>
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
