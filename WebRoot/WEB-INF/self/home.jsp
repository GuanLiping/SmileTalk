<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


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
								<a class="yy" href="#">Blog</a>
							</td>
							<td>
								<a href="#" class="xh" style="color: #808080">publish</a>
							</td>
						</tr>
						<tr>
							<td>
								<img src="/SmileTalk/images/front/photo.gif" />
							</td>
							<td>
								<a href="" class="yy">Photo</a>
							</td>
							<td>
								<a href="#" class="xh" style="color: #808080">upload</a>
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
								<a href="" class="yy">Share</a>
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
								<img src="/SmileTalk/images/userhead/u1.gif" width="150px" height="150px" />
							</td>
							<td colspan="4" class="word2">
								Liping
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
								<a class="xh" href="writeBlog.jsp">Blog</a>
							</td>
							<td width="83">
								<img src="/SmileTalk/images/front/photo.gif" />
								<a class="xh" href="addAlbum.jsp">Photo</a>
							</td>
							<td width="83">
								<img src="/SmileTalk/images/front/share.gif" />
								<a class="xh" href="">Share</a>
							</td>
						</tr>
						<tr id="doing" style="display: none;">
							<td colspan="5">
								<input type="text" value="doing some thing.." id="udo" size="30" />
								<input type="submit" value="提交" style="width: 60px" class="sub"
									onclick="fdoing()" />
								<input type="button" value="取消" onclick="hiddenDoing()"
									class="button2" />
							</td>
						</tr>
					</table>
				</div>
				<!-- comment and answer -->
				<div class="mes_response">
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
						<tr>
							<td>
								<img src="/SmileTalk/images/front/wall_post.gif" />
								<span class="word4">Momo answer you</span>
							</td>
							<td>
								<a href="javascript:void(0);" class="xh" onclick="readgt(this)"
									id="留言id号代填"
									onmouseover="this.style.color='#FFFFFF';this.style.backgroundColor='#3B5888'"
									onmouseout="this.style.color='#B1BDD6';this.style.backgroundColor='#FFFFFF'"
									style="color: #B1BDD6; font-weight: bold; text-decoration: none">×</a>
							</td>
						</tr>
						<tr>
							<td>
								<img src="/SmileTalk/images/front/wall_post.gif" />
								<span class="word4">Momo answer you</span>
							</td>
							<td>
								<a href="javascript:void(0);" class="xh" onclick="readgt(this)"
									id="留言id号代填"
									onmouseover="this.style.color='#FFFFFF';this.style.backgroundColor='#3B5888'"
									onmouseout="this.style.color='#B1BDD6';this.style.backgroundColor='#FFFFFF'"
									style="color: #B1BDD6; font-weight: bold; text-decoration: none">×</a>
							</td>
						</tr>

					</table>
				</div>
				<!-- comment and answer end -->
				<!-- status start -->
				<div class="new_thing">
					<table>
						<tr>
							<td class="word2">
								New states()
							</td>
						</tr>
						<tr>
							<td>
								New states()
							</td>
						</tr>
					</table>
				</div>
				<!-- status end -->
				<!-- popular star start-->
				<div class="popular">
					<table>
						<tr>
							<td class="STYLE3" align="left" colspan="9">
								Vaasa popular star
							</td>
						</tr>
						<tr>
							<td>
								<a><img src="/SmileTalk/images/userhead/u1.gif" width="55px"
										height="55px" /> </a>
								<a href="profile.do?type=feed&oid=xx" class="xh">Liping</a>
							</td>
							<td>
								<a><img src="/SmileTalk/images/userhead/u1.gif" width="55px"
										height="55px" /> </a>
								<a href="profile.do?type=feed&oid=xx" class="xh">Liping</a>
							</td>
							<td>
								<a><img src="/SmileTalk/images/userhead/u1.gif" width="55px"
										height="55px" /> </a>
								<a href="profile.do?type=feed&oid=xx" class="xh">Liping</a>
							</td>
							<td>
								<a><img src="/SmileTalk/images/userhead/u1.gif" width="55px"
										height="55px" /> </a>
								<a href="profile.do?type=feed&oid=xx" class="xh">Liping</a>
							</td>
							<td>
								<a><img src="/SmileTalk/images/userhead/u1.gif" width="55px"
										height="55px" /> </a>
								<a href="profile.do?type=feed&oid=xx" class="xh">Liping</a>
							</td>
							<td>
								<a><img src="/SmileTalk/images/userhead/u1.gif" width="55px"
										height="55px" /> </a>
								<a href="profile.do?type=feed&oid=xx" class="xh">Liping</a>
							</td>
							<td>

							</td>
							<td>

							</td>
							<td>

							</td>
						</tr>
					</table>
				</div>
				<!-- popular star end -->

				<!-- freash man start-->
				<div class="freshman">
					<table>
						<tr>
							<td class="STYLE3" align="left" colspan="9">
								VAMK freash man
							</td>
						</tr>
						<tr>
							<td>
								<a><img src="/SmileTalk/images/userhead/u1.gif" width="55px"
										height="55px" /> </a>
								<a href="profile.do?type=feed&oid=xx" class="xh">Liping</a>
							</td>
							<td>
								<a><img src="/SmileTalk/images/userhead/u1.gif" width="55px"
										height="55px" /> </a>
								<a href="profile.do?type=feed&oid=xx" class="xh">Liping</a>
							</td>
							<td>
								<a><img src="/SmileTalk/images/userhead/u1.gif" width="55px"
										height="55px" /> </a>
								<a href="profile.do?type=feed&oid=xx" class="xh">Liping</a>
							</td>
							<td>
								<a><img src="/SmileTalk/images/userhead/u1.gif" width="55px"
										height="55px" /> </a>
								<a href="profile.do?type=feed&oid=xx" class="xh">Liping</a>
							</td>
							<td>
								<a><img src="/SmileTalk/images/userhead/u1.gif" width="55px"
										height="55px" /> </a>
								<a href="profile.do?type=feed&oid=xx" class="xh">Liping</a>
							</td>
							<td>
								<a><img src="/SmileTalk/images/userhead/u1.gif" width="55px"
										height="55px" /> </a>
								<a href="profile.do?type=feed&oid=xx" class="xh">Liping</a>
							</td>
							<td>

							</td>
							<td>

							</td>
							<td>

							</td>
						</tr>
					</table>
				</div>
				<!-- freash man end-->
			</div>

			<div class="linkman">
				<!-- recent visit，max 6, start-->
				<div class="linkman_last">
					<table>
						<tr>
							<td style="line-height: 25px" colspan="2">
								<span class="STYLE3">Recently visit</span>
								<font class="word3">(12)</font>
							</td>
							<td style="line-height: 25px;" align="right">
								<a href="/self/myfoot.jsp" class="xh">More>></a>
							</td>
						</tr>
						<tr>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="/SmileTalk/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- person online，then show -->
								<img src="/SmileTalk/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">Liping</a>
								<span class="word3">11.11<!-- join time -->
								</span>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="/SmileTalk/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								
								<img src="/SmileTalk/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">Liping</a>
								<span class="word3">11.11<!-- join time -->
								</span>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="/SmileTalk/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								
								<img src="/SmileTalk/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">Liping</a>
								<span class="word3">11.11<!-- join time -->
								</span>
							</td>
						</tr>
						<tr>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="/SmileTalk/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								
								<img src="/SmileTalk/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">Liping</a>
								<span class="word3">11.11<!-- join time -->
								</span>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="/SmileTalk/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								
								<img src="/SmileTalk/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">Liping</a>
								<span class="word3">11.11<!-- join time -->
								</span>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="/SmileTalk/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								
								<img src="/SmileTalk/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">Liping</a>
								<span class="word3">11.11<!-- join time -->
								</span>
							</td>
						</tr>
					</table>
				</div>
				<!-- recent visit  end-->

				<!-- person you may know，max 6,  start-->
				<div class="may_know">
					<table>
						<tr>
							<td style="line-height: 25px" colspan="2">
								<span class="STYLE3">People you may know</span>
								<font class="word3">(7)</font>
							</td>
							<td style="line-height: 25px;" align="right">
								<a href="/self/myfoot.jsp" class="xh">More>></a>
							</td>
						</tr>
						<tr>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="/SmileTalk/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- online then show -->
								<img src="/SmileTalk/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">Liping</a>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="/SmileTalk/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- online then show -->
								<img src="/SmileTalk/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">Liping</a>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="/SmileTalk/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- online then show -->
								<img src="/SmileTalk/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">Liping</a>
							</td>
						</tr>
						<tr>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="/SmileTalk/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- online then show -->
								<img src="/SmileTalk/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">Liping</a>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="/SmileTalk/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- online then show -->
								<img src="/SmileTalk/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">Liping</a>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="/SmileTalk/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- online then show -->
								<img src="/SmileTalk/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">Liping</a>
							</td>
						</tr>
					</table>
				</div>
				<!-- person you may know  end-->
				<!-- friends birthday,max 6,start-->
				<div class="birth_linkman">
					<table>
						<tr>
							<td style="line-height: 25px" colspan="2">
								<span class="STYLE3">Friend's birthday</span>
								<font class="word3">(7)</font>
							</td>
							<td style="line-height: 25px;" align="right">
								<a href="/self/myfoot.jsp" class="xh">More>></a>
							</td>
						</tr>
						<tr>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="/SmileTalk/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- online then show -->
								<img src="/SmileTalk/images/front/online.gif" />
								<span class="word3">11.11<!-- 这是该人的生日 -->
								</span>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="/SmileTalk/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- online then show -->
								<img src="/SmileTalk/images/front/online.gif" />
								<span class="word3">11.11<!-- 这是该人的生日 -->
								</span>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="/SmileTalk/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- online then show -->
								<img src="/SmileTalk/images/front/online.gif" />
								<span class="word3">11.11<!-- 这是该人的生日 -->
								</span>
							</td>
						</tr>
						<tr>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="/SmileTalk/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- online then show -->
								<img src="/SmileTalk/images/front/online.gif" />
								<span class="word3">11.11<!-- 这是该人的生日 -->
								</span>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="/SmileTalk/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- online then show -->
								<img src="/SmileTalk/images/front/online.gif" />
								<span class="word3">11.11<!-- 这是该人的生日 -->
								</span>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="/SmileTalk/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- online then show -->
								<img src="/SmileTalk/images/front/online.gif" />
								<span class="word3">11.11<!-- 这是该人的生日 -->
								</span>
							</td>
						</tr>
					</table>
				</div>
				<!-- friends birthday  end-->

				<!-- online frineds, max 6,start-->
				<div class="linkman_online">
					<table>
						<tr>
							<td style="line-height: 25px" colspan="2">
								<span class="STYLE3">Friends online</span>
								<font class="word3">(12)</font>
							</td>
							<td style="line-height: 25px;" align="right">
								<a href="/self/myfoot.jsp" class="xh">More>></a>
							</td>
						</tr>
						<tr>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="/SmileTalk/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- online then show -->
								<img src="/SmileTalk/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">Liping</a>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="/SmileTalk/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- online then show -->
								<img src="/SmileTalk/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">Liping</a>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="/SmileTalk/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- online then show -->
								<img src="/SmileTalk/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">Liping</a>
							</td>
						</tr>
						<tr>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="/SmileTalk/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- online then show -->
								<img src="/SmileTalk/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">Liping</a>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="/SmileTalk/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- online then show -->
								<img src="/SmileTalk/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">Liping</a>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="/SmileTalk/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- online then show -->
								<img src="/SmileTalk/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">Liping</a>
							</td>
						</tr>
					</table>
				</div>
				<!-- online frineds  end-->
			</div>
		</div>
		<!-- add foot.jsp -->
		<jsp:include page="../public/foot.jsp"></jsp:include>
	</body>
</html>
