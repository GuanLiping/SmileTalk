<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<link rel="stylesheet" href="/SmileTalk/css/css/updPersonInfo.css" type="text/css"></link>
	</head>
	<body>

		<br /><jsp:include page="head.jsp"></jsp:include>
		<div class="album_main">
			<div class="album_left">
				<table width="80%" style="float: left;" cellspacing="0"
					cellpadding="10">
					<tr>
						<td colspan="2">
							<table width="100%" border="0" cellspacing="5" cellpadding="5">
								<tr>
							
									<td rowspan="2" width="10%">
										<a href="profile.do?type=feed&oid=xx">
										
										<c:if test="${user.photo=='default.gif'}">
									    <img src="/SmileTalk/images/userhead/0000.gif" width="50px" height="50px"/>
									    </c:if>
				         				<c:if test="${user.photo!='default.gif'}">
										<img src="/SmileTalk/images/${user.userId }/head/${user.photo }?abc=<%=Math.random() %>" width="50px" height="50px"/>
									    </c:if>
										
										</a>
									</td>
									<td>
										<font class="word2">Album</font>
									</td>
								</tr>
								<tr>
									<td>
										<a href="/SmileTalk/album.do?flag=addAlbumUI" class="xh">upload new photo</a>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td>
							<font class="word4"> ${fn:length(albumList)}</font>
						</td>
						<td align="right">
							<table border="0">
								<tr>
									<td>
										<font class="word2" style="font-size: 12px">1</font>
									</td>
									<td>
										<font class="word2" style="font-size: 12px">Total 1</font>
									</td>
									<td>
										<a href="album.do?type=album&pageNo=1&oid=xx" class="xh">
											<< 1 </a>
									</td>
									<td>
										...
									</td>
									<td>
										<a href="album.do?type=album&pageNo=xx&oid=xx" class="xh">
											< Last</a>
									</td>
								</tr>
							</table>
						</td>
					</tr>

                   
					<tr>
						<td width="80%" valign="top" colspan="2"
							style="border-top: 1px #D8DFEA solid; border-bottom: 1px #D8DFEA solid;">
							<table width="100%" border="0" cellspacing="5" cellpadding="5">	
														
								<tr>
									<td class="tblDiv">

										<table width="100%" border="0" cellspacing="3" cellpadding="1">
										<c:forEach var="album" items="${albumList}" varStatus="vs">
											<tr>
											   
											   
											   <div style="dispay:none;">
											   <c:forEach var="eachphoto" items="${album.photos}" varStatus="status">
											   <c:if test="${status.count==1}">
											   <c:set var="cover">${eachphoto.PPhoto}</c:set>
											   </c:if>
											   </c:forEach>
									   
											   </div>
											
												<td valign="top" width="33%">
													<a href="album.do?flag=viewoneAlbum&oid=xx&pageNo=1&aid=${album.alId}">
														<img src="/SmileTalk/images/${user.userId }/album/${album.alId }/${cover}" width="200px"
															height="150px" border="0" /> </a>
												</td>
												<td valign="top">
													<table width="100%" border="0" cellspacing="1"
														cellpadding="1">
														<tr>
															<td>
																<a href="album.do?flag=viewoneAlbum&oid=xx&pageNo=1&aid=xx"
																	class="xh" style="font-weight: bold; font-size: 16px">${album.alName}          
																</a>
															</td>
														</tr>
														<tr>
															<td>
																<font class="word3">2 </font>
															</td>
														</tr>							
                                                        <div style="display:none;">
                                                          <fmt:formatDate value="${album.alUpdate}" type="date" pattern="yyyy-MM-dd" var="updateTime"/>		                                            
		                                                  <fmt:formatDate value="${album.alIndate}" type="date" pattern="yyyy-MM-dd" var="createTime"/>                                            
		                                                </div>
														<tr>
															<td>
																<font class="word3">update on ${updateTime}</font>
															</td>
														</tr>
														<tr>
															<td>
																<font class="word3">create on ${createTime}</font>
															</td>
														</tr>
														<tr>
															<td>
																<a href="/xiaonei/editAlbum.jsp?aid=xxx" class="xh">Edit Album</a>
																|
																<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx"
																	class="xh">View Album</a>
															</td>
														</tr>
													</table>
												</td>
										</tr>		
									<c:if test="${vs.count%5==0}"></tr><tr></c:if>
								 </c:forEach>			
											
											
												
											 
											<!--<tr>
												<td valign="top" width="33%">
													<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx">
														<img src="/SmileTalk/images/photos/c1.jpg" width="200px"
															height="150px" border="0" /> </a>
												</td>
												<td valign="top">
													<table width="100%" border="0" cellspacing="1"
														cellpadding="1">
														<tr>
															<td>
																<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx"
																	class="xh" style="font-weight: bold; font-size: 16px">相册名称
																</a>
															</td>
														</tr>
														<tr>
															<td>
																<font class="word3">2张照片</font>
															</td>
														</tr>

														<tr>
															<td>
																<font class="word3">如果有对相册的评论，这里显示一下 </font>
															</td>
														</tr>

														<tr>
															<td>
																<font class="word3">更新于2001年11月11日 </font>
															</td>
														</tr>
														<tr>
															<td>
																<font class="word3">创建于2001年11月11日 </font>
															</td>
														</tr>
														<tr>
															<td>
																<a href="/xiaonei/editAlbum.jsp?aid=xxx" class="xh">编辑相册</a>
																|
																<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx"
																	class="xh">查看相册</a>
															</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td valign="top" width="33%">
													<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx">
														<img src="/SmileTalk/images/photos/c1.jpg" width="200px"
															height="150px" border="0" /> </a>
												</td>
												<td valign="top">
													<table width="100%" border="0" cellspacing="1"
														cellpadding="1">
														<tr>
															<td>
																<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx"
																	class="xh" style="font-weight: bold; font-size: 16px">相册名称
																</a>
															</td>
														</tr>
														<tr>
															<td>
																<font class="word3">2张照片</font>
															</td>
														</tr>

														<tr>
															<td>
																<font class="word3">如果有对相册的评论，这里显示一下 </font>
															</td>
														</tr>

														<tr>
															<td>
																<font class="word3">更新于2001年11月11日 </font>
															</td>
														</tr>
														<tr>
															<td>
																<font class="word3">创建于2001年11月11日 </font>
															</td>
														</tr>
														<tr>
															<td>
																<a href="/xiaonei/editAlbum.jsp?aid=xxx" class="xh">编辑相册</a>
																|
																<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx"
																	class="xh">查看相册</a>
															</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td valign="top" width="33%">
													<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx">
														<img src="/SmileTalk/images/photos/c1.jpg" width="200px"
															height="150px" border="0" /> </a>
												</td>
												<td valign="top">
													<table width="100%" border="0" cellspacing="1"
														cellpadding="1">
														<tr>
															<td>
																<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx"
																	class="xh" style="font-weight: bold; font-size: 16px">相册名称
																</a>
															</td>
														</tr>
														<tr>
															<td>
																<font class="word3">2张照片</font>
															</td>
														</tr>

														<tr>
															<td>
																<font class="word3">如果有对相册的评论，这里显示一下 </font>
															</td>
														</tr>

														<tr>
															<td>
																<font class="word3">更新于2001年11月11日 </font>
															</td>
														</tr>
														<tr>
															<td>
																<font class="word3">创建于2001年11月11日 </font>
															</td>
														</tr>
														<tr>
															<td>
																<a href="/xiaonei/editAlbum.jsp?aid=xxx" class="xh">编辑相册</a>
																|
																<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx"
																	class="xh">查看相册</a>
															</td>
														</tr>
													</table>
												</td>
											</tr>-->
										</table>
										<!--  
										如果没有相册,这里显示一句话!
										<font class="word3">xx 还没有相册</font>
										-->
									</td>
								</tr>

							</table>
						</td>

					</tr>
					<tr>
						<td>
							&nbsp;

						</td>
						<td align="right">
							<table>
								<tr>
									<td>
										<font class="word2" style="font-size: 12px">1</font>
									</td>
									<td>
										<font class="word2" style="font-size: 12px">Total 1</font>
									</td>
									<td>
										<a href="album.do?type=album&pageNo=1&oid=xx" class="xh">
											<< 1  </a>
									</td>
									<td>
										...
									</td>
									<td>
										<a href="album.do?type=album&pageNo=xx&oid=xx" class="xh">
											< Last</a>
									</td>
								</tr>
							</table>
						</td>
					</tr>

				</table>
				<div
					style="width: 20%; float: left; text-align: center; padding-top: 5px">
					<img src="/SmileTalk/images/front/selfright.jpg" />
				</div>
			</div>
		</div>
		<!-- 引入foot.jsp -->
		<jsp:include page="../public/foot.jsp"></jsp:include>
	</body>
</html>
