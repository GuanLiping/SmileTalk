<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<link rel="stylesheet" href="/SmileTalk/css/css/home.css" type="text/css"></link>
		<link rel="stylesheet" href="/SmileTalk/css/css/common.css" type="text/css"></link>
		<script type="text/javascript">
		<!--
		
		function showDoing(){
		 document.getElementById("doing").style.display="";
		}
		
		function hiddenDoing(){
		 document.getElementById("doing").style.display="none";
		}
		
		
		//-->
		</script>
	</head>
	<body>

		<jsp:include page="head.jsp"></jsp:include>
		<div class="home_main">
			<div class="types">
				<div class="types_tab">
					<table>
						<tr>
							<td class="word2" colspan="3" align="left">
								&nbsp;Apps
							</td>
						</tr>
						<tr>
							<td width="20%">
								<img src="/SmileTalk/images/front/blog.gif" />
							</td>
							<td>
								<a class="yy" href="/SmileTalk/article.do?flag=myArticleUI">Blog</a>
							</td>
							<td>
								<a href="/SmileTalk/article.do?flag=addArticleUI" class="/SmileTalk/article.do?flag=myArticleUI" style="color: #808080">publish</a>
							</td>
						</tr>
						<tr>
							<td>
								<img src="/SmileTalk/images/front/photo.gif" />
							</td>
							<td>
								<a href="/SmileTalk/album.do?flag=myAlbumUI" class="yy">Photo</a>
							</td>
							<td>
								<a href="/SmileTalk/album.do?flag=myAlbumUI" class="xh" style="color: #808080">upload</a>
							</td>
						</tr>
						<tr>
							<td>
								<img src="/SmileTalk/images/front/group.gif" />
							</td>
							<td>
								<a href="" class="yy">Group</a>
							</td>
							<td>

							</td>
						</tr>
						<tr>
							<td>
								<img src="/SmileTalk/images/front/share.gif" />
							</td>
							<td>
								<a href="#" class="yy">Share</a>
							</td>
							<td>

							</td>
						</tr>
						<tr>
							<td>
								<img src="/SmileTalk/images/front/gift.gif" />
							</td>
							<td>
								<a href="" class="yy">Gift</a>
							</td>
							<td>

							</td>
						</tr>
						<tr>
							<td>
								<img src="/SmileTalk/images/front/toupiao.gif" />
							</td>
							<td>
								<a href="" class="yy">Vote</a>
							</td>
							<td>

							</td>
						</tr>
					</table>
				</div>
				<div class="home_ad">
					<img src="/SmileTalk/images/front/homeleft.jpg" />
				</div>
			</div>
			<div class="content">
				<div class="profile">
					<table>
						<tr>
							<td rowspan="3" width="193px">
							    <c:if test="${user.photo=='default.gif'}">
							    <img src="/SmileTalk/images/userhead/0000.gif" width="150px" height="150px"/>
							    </c:if>
		         				<c:if test="${user.photo!='default.gif'}">
								<img src="/SmileTalk/images/${user.userId }/head/${user.photo }?abc=<%=Math.random() %>" width="150px" height="150px"/>
							    </c:if>
							</td>
							<td colspan="4" class="word2">
								${user.name}
							</td>
						</tr>
						<tr>
							<td colspan="4">
								<span class="word4" id="sudo">Nothing new!</span>
								<a class="xh" href="javascript:void(0);" onclick="showDoing()">
									edit</a>
							</td>
						</tr>
						<tr>
							<td width="83">
								<img src="/SmileTalk/images/front/status.gif" />
								<a class="xh" href="javascript:void(0);" onclick="showDoing()">States</a>
							</td>
							<td width="83">
								<img src="/SmileTalk/images/front/blog.gif" />
								<a class="xh" href="/SmileTalk/article.do?flag=myArticleUI">Blog</a>
							</td>
							<td width="83">
								<img src="/SmileTalk/images/front/photo.gif" />
								<a class="xh" href="/SmileTalk/album.do?flag=myAlbumUI">Photo</a>
							</td>
							<td width="83">
								<img src="/SmileTalk/images/front/share.gif" />
								<a class="xh" href="">Share</a>
							</td>
						</tr>
						<tr id="doing" style="display: none;">
							<td colspan="5">
							<form action="/SmileTalk/news.do?flag=AddNews" method="post">  
								<input type="text" value="doing some thing.." id="udo" size="30" name="content"/>
								<input type="submit" value="submit" style="width: 60px" class="sub"
									onclick="fdoing()" />
								<input type="button" value="cancle" onclick="hiddenDoing()"
									class="button2" />
							</form>		
							</td>
						</tr>
					</table>
				</div>
				<!-- comment and answer -->
				<!--  <div class="mes_response">
					<table>
						<tr>
							<td class="word2">
								Comments(2)
							</td>
							<td width="30px">
								<a href="" class="xh">more</a>
							</td>
						</tr>
						<tr>
							<td>
								<img src="/SmileTalk/images/front/wall_post.gif" />
								<span class="word4">Momo answer you</span>
							</td>
							<td>
								<a href="javascript:void(0);" class="xh" onclick="readgt(this)"
									id="id"
									onmouseover="this.style.color='#FFFFFF';this.style.backgroundColor='#3B5888'"
									onmouseout="this.style.color='#B1BDD6';this.style.backgroundColor='#FFFFFF'"
									style="color: #B1BDD6; font-weight: bold; text-decoration: none">×</a>
							</td>
						</tr>
						
					</table>
				</div>-->
				<!-- comment and answer end -->
				<!-- status start -->
				<div class="new_thing">
					
					<c:forEach var="news" items="${newsList}" varStatus="vs">
					<c:if test="${vs.count<=6}">
					  <form action="/SmileTalk/news.do?flag=AddNewsComment" method="post">
					  <table>
					  <tr>
					   	<td class="word2">
								<a href="friend.do?flag=viewFriend&fid=${news.user.userId}"> <img
										src="/SmileTalk/images/${news.user.userId}/head/${news.user.photo}" width="55px" height="55px" /> </a>
							
							</td>
							<td>
                                <span class="word3">${news.user.name}</span><br/>	
							    <input type="hidden" name="id" value="${news.user.userId}"/> 
							    <span class="word2">${news.content}</span>	
							</td>
							</tr>
							<!-- 
							<tr>
							<td></td>
							<td>
							    <textarea style="width: 500px; font-size: 12px" id="cont" name="comment"></textarea>
							</td>
							</tr>
							<tr>
							<td></td>
							<td>
							    <input class="sub" value="Comment" type="submit" style="width: 80px" />
							</td>
							</tr>
							 -->
							<hr/>
													
						</table>
						</form>
						</c:if>
						</c:forEach>
						
					
				</div>
				
			</div>

				<!-- friends ,max 6,start-->
				<div class="birth_linkman">
					<table>
						<tr>
							<td style="line-height: 25px" colspan="3">
								<span class="STYLE3">My Friends</span>
								<font class="word3">(${fn:length(friendList)})</font>
							</td>
							<td style="line-height: 25px;" align="right">
								<a href="/SmileTalk/friend.do?flag=goAllFriend" class="xh">More>></a>
							</td>
						</tr>
						<tr>
						<c:forEach var="friend" items="${friendList}" varStatus="vs">
						 <c:if test="${vs.count<=6}">
							<td>
								<a href="friend.do?flag=viewFriend&fid=${friend.user.userId}"> 
								<c:if test="${friend.user.photo=='default.gif'}">
							    <img src="/SmileTalk/images/userhead/0000.gif" width="55px" height="55px"/>
							    </c:if>
		         				<c:if test="${friend.user.photo!='default.gif'}">
								<img src="/SmileTalk/images/${friend.user.userId }/head/${friend.user.photo }?abc=<%=Math.random() %>" width="55px" height="55px"/>
							    </c:if>
							    </a>
								<!-- online then show -->
								<img src="/SmileTalk/images/front/online.gif" />
								<span class="word3">${friend.user.name}<!-- this person's birthday -->
								</span>
							</td>
						</c:if>
						</c:forEach>	
						</tr>
					</table>
				</div>
				<!-- friends birthday  end-->

				<!-- person you may know，max 6,  start-->
				<div class="may_know">
					<table>
						<tr>
							<td style="line-height: 25px" colspan="3">
								<span class="STYLE3">People you may know</span>
								<font class="word3">(${fn:length(peopleList)})</font>
							</td>
							<td style="line-height: 25px;" align="right">
								<a href="/SmileTalk/friend.do?flag=goAllFriend" class="xh">More>></a>
							</td>
						</tr>
						<tr>
							<c:forEach var="people" items="${peopleList}" varStatus="vs">
						 <c:if test="${vs.count<=6}">
							<td>
								<a href="friend.do?flag=viewFriend&fid=${people.userId}"> 
								 <c:if test="${people.photo=='default.gif'}">
							    <img src="/SmileTalk/images/userhead/0000.gif" width="55px" height="55px"/>
							    </c:if>
		         				<c:if test="${people.photo!='default.gif'}">				
								<img src="/SmileTalk/images/${people.userId}/head/${people.photo}" width="55px" height="55px" /> 
								</c:if>
								</a>
								<!-- online then show -->
								<img src="/SmileTalk/images/front/online.gif" />
								<span class="word3">${people.name}<!-- this person's birthday -->
								</span>
							</td>
						</c:if>
						</c:forEach>						
						</tr>
					</table>
				</div>
				<!-- person you may know  end-->
			</div>
		
		<!-- add foot.jsp -->
		<jsp:include page="../public/foot.jsp"></jsp:include>
	</body>
</html>
