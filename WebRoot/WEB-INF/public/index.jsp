<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Smile Talk index page</title>
<link rel="stylesheet" href="/SmileTalk/css/common.css" type="text/css"></link>
<link rel="stylesheet" href="/SmileTalk/css/index.css" type="text/css"></link>
</head>
<body>
   <!-- insert head page -->
   <jsp:include page="head.jsp"/>
   <div class="main">
       <div class="reg_login">
            <div class="logForm">
                 <span class="font4">Email:</span><br/>
                 <input type="text" name="email"/><br/>
                 <span class="font4">Password:</span><br/>
                  <input type="password" name="password"/><br/>
                  <input type="checkbox"/>Keep me log in<br/>
                   <input type="submit" value=" " class="sub"/><br/>
                   <a href="#">Forgot your password?</a>
             </div>         
             <div class="reg">
             <span class="font5">Register</span><br/>
             <a href="/SmileTalk/register.do?flag=regUI">Join us!</a>
             </div>      
             <div class="mobile_login">
              <span class="font5">Mobile Login</span><br/>
              <a href="#">Visit m.SmileTalk.com</a>
             </div>  
       </div>
       
       <div class="banner1">
       <img src="/SmileTalk/images/front/ay-0812-658-280.jpg" style="width:719;height:306px;"/>
       </div>
       
       <div class="intro">
       <p class="font2">SmileTalk is a social network, join it you can:</p>
         <ul>
           <li>Contact friends, get to know their news</li>
           <li>Use photos and journal to record your life</li>
           <li>Find new friend also old friend</li>
           <li>Share photos music and movie with your friends</li>
        </ul>
       </div>
       
       <div class="reg2">
       <span class="font2">Because Real,  so Wonderful!</span>
       <p>
       Make friends here!<br/>
       <a href="/SmileTalk/register.do?flag=regUI"><img src="/SmileTalk/images/front/register.jpg"/></a>
       </p>     
       </div>
       
   </div>
    <jsp:include page="foot.jsp"/>
</body>
</html>