<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
	<head>
	  	<link rel="stylesheet" href="/SmileTalk/css/css/common.css" type="text/css"></link>
		<script type="text/javascript">
  <!-- 
function changeBG(o){
	o.style.backgroundColor="#5C75AA";
}
function changeBG2(o){
	o.style.backgroundColor="";
}
-->
  </script>

	</head>

		<div class="head">
			<img src="/SmileTalk/images/front/top1.jpg" width="740px" margin-top="5px"/>
			<img src="/SmileTalk/images/front/top2.jpg" width="253px" height="60px"/>
			<img src="/SmileTalk/images/front/xnw3.jpg" style="float: left;" />
			<ul class="home_navi">
			<li onmouseover="changeBG(this)" onmouseout="changeBG2(this)"><a class="top" href="/SmileTalk/login.do?flag=logtoMain">Main</a></li>
			<li onmouseover="changeBG(this)" onmouseout="changeBG2(this)"><a class="top" href="/SmileTalk/profile.do?flag=goHomePageUI">Home</a></li>
			<li onmouseover="changeBG(this)" onmouseout="changeBG2(this)"><a class="top" href="/SmileTalk/profile.do?flag=BasicInfoUI">Setting</a></li>
			<li onmouseover="changeBG(this)" onmouseout="changeBG2(this)"><a class="top" href="/SmileTalk/friend.do?flag=goAllFriend">Friends</a></li>
			<li onmouseover="changeBG(this)" onmouseout="changeBG2(this)"><a class="top" href="#">Apps</a></li>
			<li onmouseover="changeBG(this)" onmouseout="changeBG2(this)"><a class="top" href="#">Invite</a></li>
			<li onmouseover="changeBG(this)" onmouseout="changeBG2(this)"><a class="top" href="#">Class</a></li>
			<li onmouseover="changeBG(this)" onmouseout="changeBG2(this)"><a class="top" href="#">Letter</a></li>
			<li>Search</li>
			<li style="width: 170px;"> 
			<form action="/SmileTalk/friend.do?flag=addFriendUI" name="form1" method="post">
			<input type="text" name="friendName"/><a style="cursor:pointer" href="javascript:document:form1.submit();"><img src="/SmileTalk/images/front/sou.jpg" /></a>
			</form>
			</li>
			</ul>
			
			<ul class="navi">
				<li onmouseover="changeBG(this)" onmouseout="changeBG2(this)">
					<a class="anavi" href="/SmileTalk/profile.do?flag=BasicInfoUI">Account</a>
				</li>
				
				<li onmouseover="changeBG(this)" onmouseout="changeBG2(this)">
					<a  class="anavi" href="/SmileTalk/login.do?flag=logtoOut">Log out</a>
				</li>
			</ul>
		</div>

