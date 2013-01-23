<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<link rel="stylesheet" href="/SmileTalk/css/css/homePage.css" type="text/css"></link>
		<link rel="stylesheet" href="/SmileTalk/css/css/common.css" type="text/css"></link>
		<script type="text/javascript" src="/SmileTalk/js/common.js"></script>
		<script type="text/javascript">
		<!--
		function opSelf(){
			//show my blog and album
			document.getElementById("mylog").style.display="";
			document.getElementById("myalbum").style.display="";
			//shadow the self information
			document.getElementById("myinfo").style.display="none";
			document.getElementById("tdSelf").style.backgroundColor="#FFFFFF";
			document.getElementById("tdInfo").style.backgroundColor="#D8DFEA";
			
			document.getElementById("tdSelf").style.borderBottomColor="#FFFFFF";
			document.getElementById("tdSelf2").style.borderTopColor="#FFFFFF";
			document.getElementById("tdInfo").style.borderBottomColor="#D8DFEA";
			document.getElementById("tdInfo2").style.borderTopColor="#D8DFEA";
			document.getElementById("aSelf").style.color="black";
			document.getElementById("aInfo").style.color="#3B5888";
		}
		function opInfo(){
			//display none the blog and album
			document.getElementById("mylog").style.display="none";
			document.getElementById("myalbum").style.display="none";
			//show self informaion
			document.getElementById("myinfo").style.display="";
			document.getElementById("tdSelf").style.backgroundColor="#D8DFEA";
			document.getElementById("tdInfo").style.backgroundColor="#FFFFFF";
			
			document.getElementById("tdSelf").style.borderBottomColor="#D8DFEA";
			document.getElementById("tdSelf2").style.borderTopColor="#D8DFEA";
			document.getElementById("tdInfo").style.borderBottomColor="#FFFFFF";
			document.getElementById("tdInfo2").style.borderTopColor="#FFFFFF";
			
			
			document.getElementById("aSelf").style.color="#3B5888";
			document.getElementById("aInfo").style.color="black";
		}
		
		/*make fucnction on album*/
		function chgImg(o){
			o.style.borderColor="#3B5888";
			$("a"+o.id).style.borderColor="#D8DFEA";
		}

		function chgImg2(o){
			o.style.borderColor="#D8DFEA";
			$("a"+o.id).style.borderColor="#FFFFFF";
		}
		//-->
		</script>
		<style type="text/css">
/*feed link*/
a.feed:link {
	font-size: 14px;
	color: #3B5888;
	text-decoration: none;
}

a.feed:visited {
	font-size: 14px;
	color: #3B5888;
	text-decoration: none;
}

a.feed:hover {
	font-size: 14px;
	color: #3B5888;
	text-decoration: none;
}

a.feed:active {
	font-size: 14px;
	color: #3B5888;
	text-decoration: none;
}

.feedsp {
	background-color: #D8DFEA;
	font-weight: bold;
	padding: 3px;
	border-top: 2px solid #D8DFEA;
	border-bottom: 2px solid #D8DFEA;
	border-right: 2px solid #FFFFFF;
	border-left: 2px solid #D8DFEA;
}
</style>
	</head>
	<body>

		<jsp:include page="head.jsp"></jsp:include>
		<div class="homePage">
			<div class="homePage_intro">

				<table>
					<tr>
						<td>
							<img src="/SmileTalk/images/userhead/u1.gif" width="150px" height="150px" />
						</td>
					</tr>
					<tr>
						<td onMouseOver="chgTblusers(this)"
							onMouseOut="chgTblusers2(this)" id="editphoto">
							&nbsp;
							<a href="/SmileTalk/profile.do?flag=uploadPhotoUI" class="xh" id="editphotoa">Edit profile picture</a>
						</td>
					</tr>
					<tr>
						<td onMouseOver="chgTblusers(this)"
							onMouseOut="chgTblusers2(this)" id="edit">
							&nbsp;
							<a href="/self/basicInfo.jsp" class="xh" id="edita">Edit Profile</a>
						</td>
					</tr>
					<tr>
						<td onMouseOver="chgTblusers(this)"
							onMouseOut="chgTblusers2(this)" id="dress">
							&nbsp;
							<a href="#" class="xh" id=dressa>Change cover</a>
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;
							<font class="word3">network：</font>VAMK
						</td>
					</tr>
					<tr>
						<!-- 如果有生日，则显示 -->
						<td>
							&nbsp;
							<font class="word3">Birthday：</font>1999-11-11
						</td>
					</tr>
					<tr>
						<!-- if there is hometown then show-->
						<td>
							&nbsp;
							<font class="word3">Hometown：</font> Wuhan, China
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;
						</td>
					</tr>
				</table>

				<div class="allkinds">
					<img src="/SmileTalk/images/front/profileleft.jpg" />
				</div>
			</div>
			<!-- different information -->
			<div class="profile">
				<!-- current information -->
				<div class="curInfo">
					&nbsp;
					<font class="word2">Liping </font>&nbsp;
					<img src="/SmileTalk/images/front/star.gif" />
					&nbsp;
					<font class="word4">4 visited</font>&nbsp;
					<font class="word3">doing nothing here </font>&nbsp;
					<a href="#" class="xh">edit</a>
				</div>
				<!-- choose your operation -->
				<div class="opers">
					<table align="center" border="0" width="100%" cellspacing="1"
						cellpadding="5">
						<tr>
							<td>
								&nbsp;
							</td>
							<td class="feedsp" id="tdSelf"
								style="background-color: #FFFFFF; border-bottom-color: #FFFFFF; border-spacing: 5px"
								align="center">
								<a href="javascript:void(0);" class="feed" style="color: black;"
									onclick="opSelf()" id="aSelf">Home Page</a>
							</td>
							<td class="feedsp" id="tdInfo" align="center">
								<a href="javascript:void(0);" class="feed" onclick="opInfo()"
									id="aInfo">Profile</a>
							</td>
							<td class="feedsp" align="center">
								<a href="/blog.do?type=blog&oid=xx&pageNo=1&year=0&month=0"
									class="feed">Blog</a>
							</td>
							<td class="feedsp" align="center">
								<a href="/SmileTalk/album.do?flag=myAlbumUI" class="feed">Album</a>
							</td>
							<td class="feedsp" align="center">
								<a href="#" class="feed">Application</a>
							</td>
							<td width="40%">
								&nbsp;
							</td>
						</tr>
						<tr>
							<td style="border-top: 1px #D8DFEA solid;">
								&nbsp;
							</td>
							<td id="tdSelf2" style="border-top: 1px #FFFFFF solid;">
								&nbsp;
							</td>
							<td id="tdInfo2" style="border-top: 1px #D8DFEA solid;">
								&nbsp;
							</td>
							<td style="border-top: 1px #D8DFEA solid;">
								&nbsp;
							</td>
							<td style="border-top: 1px #D8DFEA solid;">
								&nbsp;
							</td>
							<td style="border-top: 1px #D8DFEA solid;">
								&nbsp;
							</td>
							<td style="border-top: 1px #D8DFEA solid;">
								&nbsp;
							</td>
						</tr>
					</table>
				</div>
				<!-- choose your operation end -->
				<!--  album start-->
				<div id="myalbum" class="album">
					<table>
						<tr>
							<td align="left" colspan="3">
								<font class="STYLE3">Album</font>
								<a href="/album.do?type=album&oid=xx&pageNo=1" class="xh">（5）</a>
							</td>
							<td align="right">
								<a href="album.do?type=album&oid=xx&pageNo=1" class="xh">View all Album</a>
							</td>
						</tr>
						<tr>
							<td>
								<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx"
									style="border: 1px #D8DFEA solid;" onmouseover="chgImg(this)"
									onmouseout="chgImg2(this)" id="a100"> <img
										src="/SmileTalk/images/photos/t4.jpg" width="100px" height="75px"
										style="border: 5px #FFFFFF solid;" id="aa100" /> </a>
								<br />
								<b> <a
									href="album.do?type=oneAlbum&oid=|oid|&pageNo=1&aid=|al.getAlId()|"
									class="xh" style="font-weight: bold;">Album name</a> </b>
								<br />
								<span class="word4">Update on 23.01.2013</span>
							</td>
							<!-- show the cycle four album -->
							<td>
								<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx"
									style="border: 1px #D8DFEA solid;" onmouseover="chgImg(this)"
									onmouseout="chgImg2(this)" id="a100"> <img
										src="/SmileTalk/images/photos/t4.jpg" width="100px" height="75px"
										style="border: 5px #FFFFFF solid;" id="aa100" /> </a>
								<br />
								<b> <a
									href="album.do?type=oneAlbum&oid=|oid|&pageNo=1&aid=|al.getAlId()|"
									class="xh" style="font-weight: bold;">Album name</a> </b>
								<br />
								<span class="word4">Update on 10.01.2013</span>
							</td>
							<td>
								<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx"
									style="border: 1px #D8DFEA solid;" onmouseover="chgImg(this)"
									onmouseout="chgImg2(this)" id="a100"> <img
										src="/SmileTalk/images/photos/t4.jpg" width="100px" height="75px"
										style="border: 5px #FFFFFF solid;" id="aa100" /> </a>
								<br />
								<b> <a
									href="album.do?type=oneAlbum&oid=|oid|&pageNo=1&aid=|al.getAlId()|"
									class="xh" style="font-weight: bold;">Album name</a> </b>
								<br />
								<span class="word4">Update on 12.09.2012</span>
							</td>
							<td>
								<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx"
									style="border: 1px #D8DFEA solid;" onmouseover="chgImg(this)"
									onmouseout="chgImg2(this)" id="a100"> <img
										src="/SmileTalk/images/photos/t4.jpg" width="100px" height="75px"
										style="border: 5px #FFFFFF solid;" id="aa100" /> </a>
								<br />
								<b> <a
									href="album.do?type=oneAlbum&oid=|oid|&pageNo=1&aid=|al.getAlId()|"
									class="xh" style="font-weight: bold;">Album name</a> </b>
								<br />
								<span class="word4">Update on 12.08.2012</span>
							</td>
						</tr>
					</table>
				</div>
				<!-- album end-->

				<!-- Blog  start-->
				<div id="mylog" class="log">
					<table>
						<tr>
							<td colspan="2">
								<span class="STYLE3">Bolg</span>
								<a href="" class="xh">(Blog numbers)</a>
							</td>
							<td align="right">
								<a href="/blog.do?type=blog&oid=xx&pageNo=1&year=0&month=0"
									class="xh">View all blogs</a>
							</td>
						</tr>
						<tr>
							<td style="border-bottom: 1px #D8DFEA solid;">
								<img src="/SmileTalk/images/front/blog.gif " />
							</td>
							<td style="border-bottom: 1px #D8DFEA solid;">
								<a href="blog.do?type=read&oid=xx>&aid=xx&pageNo=1" class="xh"
									style="font-weight: bold;">Blog title</a>
							</td>
							<td align="right" style="border-bottom: 1px #D8DFEA solid;">
								<span class="word4">Blog pulish on 2008-11-11</span>
							</td>
						</tr>
						<tr>
							<td style="border-bottom: 1px #D8DFEA solid;">
								<img src="/SmileTalk/images/front/blog.gif " />
							</td>
							<td style="border-bottom: 1px #D8DFEA solid;">
								<a href="blog.do?type=read&oid=xx>&aid=xx&pageNo=1" class="xh"
									style="font-weight: bold;">Blog title</a>
							</td>
							<td align="right" style="border-bottom: 1px #D8DFEA solid;">
								<span class="word4">Blog pulish on 2008-11-11</span>
							</td>
						</tr>
						<tr>
							<td style="border-bottom: 1px #D8DFEA solid;">
								<img src="/SmileTalk/images/front/blog.gif " />
							</td>
							<td style="border-bottom: 1px #D8DFEA solid;">
								<a href="blog.do?type=read&oid=xx>&aid=xx&pageNo=1" class="xh"
									style="font-weight: bold;">Blog title</a>
							</td>
							<td align="right" style="border-bottom: 1px #D8DFEA solid;">
								<span class="word4">Blog pulish on 2008-11-11</span>
							</td>
						</tr>
					</table>
				</div>
				<!--blog end-->

				<!-- self information，much，not show at first -->
				<div id="myinfo" class="person_info" style="display: none;">
					<table width="100%" border="0" cellspacing="1" cellpadding="1">
						<tr>
							<td width="15%">
								<font class="STYLE3">Basic information</font>
							</td>
							<td>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td>
								<font class="word4">Network：</font>
							</td>
							<td>
								&nbsp;
							</td>
						</tr>

						<tr>
							<td>
								<font class="word4">Sex：</font>
							</td>
							<td>
								Female
							</td>
						</tr>

						<!-- if there is birthday ，then show -->
						<tr>
							<td>
								<font class="word4">Birthday：</font>
							</td>
							<td>
								1999-11-11
							</td>
						</tr>
						<!-- if there is home town，then show -->
						<tr>
							<td>
								<font class="word4">Hometown：</font>
							</td>
							<td>
								Wuhan China
							</td>
						</tr>

					</table>
					<!-- basic inforamtion end -->
					<!-- personal interest -->
					<table width="100%" border="0" cellspacing="1" cellpadding="1">
						<tr>
							<td width="15%">
								<font class="STYLE3">Profile</font>
							</td>
							<td>
								&nbsp;
							</td>
						</tr>
						<!-- if there is interest -->
						<tr>
							<td>
								<font class="word4">Interest：</font>
							</td>
							<td>
								Film, traveling, ski
							</td>
						</tr>
						<!-- if like the book -->
						<tr>
							<td>
								<font class="word4">Like books：</font>
							</td>
							<td>
								Harry porter
							</td>
						</tr>
						<!-- if there is interest music -->
						<tr>
							<td>
								<font class="word4">Like music：</font>
							</td>
							<td>
								go west, on your mark,  Beat JP, My Time To Be A Star
							</td>
						</tr>
						<!-- if there is interest film -->
						<tr>
							<td>
								<font class="word4">Like film：</font>
							</td>
							<td>
								Bad family
							</td>
						</tr>
						<!-- like cartoon -->
						<tr>
							<td>
								<font class="word4">Like cartoom：</font>
							</td>
							<td>
								Mummi
							</td>
						</tr>
						<!-- Like sport-->
						<tr>
							<td>
								<font class="word4">Like sport：</font>
							</td>
							<td>
								swimming
							</td>
						</tr>
						<!-- Like game -->
						<tr>
							<td>
								<font class="word4">Like game：</font>
							</td>
							<td>
								WE10, Bloxx It
							</td>
						</tr>
						<!--  -->
						<tr>
							<td>
								<font class="word4">Students'Association：</font>
							</td>
							<td>
								Vamk
							</td>
						</tr>
					</table>
					<!-- interest end -->
					<!-- contact -->
					<table width="100%" border="0" cellspacing="1" cellpadding="1">
						<tr>
							<td width="15%">
								<font class="STYLE3">contact</font>
							</td>
							<td>
								&nbsp;
							</td>
						</tr>
						<!-- qq 
						<tr>
							<td width="15%">
								<font class="word4">QQ：</font>
							</td>
							<td>
								888888
							</td>
						</tr>-->
						<!--  if msn -->
						<tr>
							<td>
								<font class="word4">MSN：</font>
							</td>
							<td>
								guanliping@gmail.com
							</td>
						</tr>
						<!-- mobile -->
						<tr>
							<td>
								<font class="word4">phone number：</font>
							</td>
							<td>
								111111111111
							</td>
						</tr>
						<!-- 
						<tr>
							<td>
								<font class="word4">：</font>
							</td>
							<td>
								12345678
							</td>
						</tr>-->
						<!-- 如果有个人网站 -->
						<tr>
							<td>
								<font class="word4">Personal website：</font>
							</td>
							<td>
								http://guanliping.qq.com
							</td>
						</tr>
					</table>
					<!-- contact end -->
					<!-- school -->
					<table width="100%" border="0" cellspacing="1" cellpadding="1">
						<tr>
							<td width="15%">
								<font class="STYLE3">School information</font>
							</td>
							<td>
								&nbsp;
							</td>
						</tr>

						<tr>
							<td>
								<font class="word4">University：</font>
							</td>
							<td>
								&nbsp;
							</td>
						</tr>
						
					</table>
					<!-- school end -->
					<!-- company start -->
					<!-- company end -->
					<!-- join class start -->
					<!-- join class end -->
				</div>

				<!-- message start -->
				<div class="guessbook">
					<table>
						<tr>
							<td>
								<span class="STYLE3">Comment board</span>
							</td>
							<td align="right">
								<a href="profile.do?type=gossip&oid=xxx&pageNo=1" class="xh">All comments</a>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<textarea style="width: 500px; font-size: 12px" id="cont"></textarea>
							</td>
						</tr>
						<tr>
							<td>
								<input class="sub" value="Message" type="button"
									onclick="addGossip()" style="width: 60px" />
								<font class="word3">（Max 2000 words）</font>
							</td>
							<td></td>
						</tr>
					</table>
				</div>
				<!-- message end -->
				<!-- message content ，max 10-->
				<div class="mess_con">
					<table>
						<tr>
							<td rowspan="2" width="8%">
								<a href="profile.do?type=feed&oid=xx"> <img
										src="/SmileTalk/images/userhead/u1.gif" width="50px" height="50px" /> </a>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx" class="xh">guan</a>
								(Vamk)&nbsp;
								<font class="word3">message time 2001-11-11 17:44</font>
							</td>
							<td>
								<a href="javascript:void(0);" class="xh" id="xx"
									onclick="delgossip(this)">Delete</a>
							</td>
						</tr>
						<tr>
							<td rowspan="2">
								message content
							</td>
						</tr>
					</table>
				</div>
				<!-- message content end -->
				<!-- message content，max 10 -->
				<div class="mess_con">
					<table>
						<tr>
							<td rowspan="2" width="8%">
								<a href="profile.do?type=feed&oid=xx"> <img
										src="/SmileTalk/images/userhead/u1.gif" width="50px" height="50px" /> </a>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx" class="xh">guan</a>
								(Vamk)&nbsp;
								<font class="word3">message time 2001-11-11 17:44</font>
							</td>
							<td>
								<a href="javascript:void(0);" class="xh" id="xx"
									onclick="delgossip(this)">Delete</a>
							</td>
						</tr>
						<tr>
							<td rowspan="2">
								message content
							</td>
						</tr>
					</table>
				</div>
				<p style="float: right; margin: 15px 10px 0 auto">
					<a href="#">View all message >></a>
				</p>
			</div>
			<div class="friend_last">
				<!-- special friends list -->
				<div class="special_friend">
					<table>
						<tr>
							<td style="line-height: 27px">
								<font class="STYLE3">Special friend</font>
							</td>
							<td>

							</td>
							<td align="right">
								<a href="friend.do?type=hot" class="xh">Edit</a>
							</td>
						</tr>
						<tr>
							<td>
								<a href="profile.do?type=feed&oid=xxx"> <img
										src="/SmileTalk/images/userhead/u1.gif" width="50px" height="50px" />
								</a>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx" class="xh">Daani</a>
							</td>
							<td>
								<font class="word4">Good sister!</font>
							</td>
						</tr>
					</table>
				</div>
				<!-- special freind end -->
				<!-- recient visit -->
				<div class="last_visit">
					<table>
						<tr>
							<td align="left" style="line-height: 27px" colspan="3">
								<font class="STYLE3">Recient visit</font>
							</td>
							
						</tr>
						<tr>
							<td>
								<a href="profile.do?type=feed&oid=xxx"> <img
										src="/SmileTalk/images/userhead/u1.gif" width="50px" height="50px" />
								</a>
								<a href="profile.do?type=feed&oid=xx" class="xh">dd</a>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xxx"> <img
										src="/SmileTalk/images/userhead/u1.gif" width="50px" height="50px" />
								</a>
								<a href="profile.do?type=feed&oid=xx" class="xh">dd</a>
							</td>
							<td>
							<a href="profile.do?type=feed&oid=xxx"> <img
										src="/SmileTalk/images/userhead/u1.gif" width="50px" height="50px" />
								</a>
								<a href="profile.do?type=feed&oid=xx" class="xh">dd</a>
							
							</td>
						</tr>
					</table>
				</div>
				<!-- recent visit end -->
				<!-- friend start -->
				<!-- freind -->
				<div class="good_friend">
					<table>
						<tr>
							<td align="left" style="line-height: 27px" colspan="3">
								<font class="STYLE3">freind(11)</font>
							</td>
							
						</tr>
						<tr>
							<td>
								<a href="profile.do?type=feed&oid=xxx"> <img
										src="/SmileTalk/images/userhead/u1.gif" width="50px" height="50px" />
								</a>
								<a href="profile.do?type=feed&oid=xx" class="xh">dd</a>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xxx"> <img
										src="/SmileTalk/images/userhead/u1.gif" width="50px" height="50px" />
								</a>
								<a href="profile.do?type=feed&oid=xx" class="xh">dd</a>
							</td>
							<td>
							<a href="profile.do?type=feed&oid=xxx"> <img
										src="/SmileTalk/images/userhead/u1.gif" width="50px" height="50px" />
								</a>
								<a href="profile.do?type=feed&oid=xx" class="xh">dd</a>
							
							</td>
						</tr>
					</table>
				</div>
				<!-- freind end -->
			</div>
		</div>
		<!-- include foot.jsp -->
		<jsp:include page="../public/foot.jsp"></jsp:include>
	</body>
</html>
