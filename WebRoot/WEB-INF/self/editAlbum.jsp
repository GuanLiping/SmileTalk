<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<link rel="stylesheet" href="/SmileTalk/css/css/updPersonInfo.css" type="text/css"></link>
<script type="text/javascript" src="/SmileTalk/js/jquery-1.6.2.js"></script>
<script type="text/javascript">
$(document).ready(function(){
   
    var select="";
   
   $("#selal").change(function(){
      select=$("#selal").val();
   });
   
   
   $("#uploadPhoto").click(function(){
   
       if(select==undefined||select==""){
          e.preventDefault();
       }else{
         
         window.location.href="/SmileTalk/album.do?flag=addMorePhotoUI&aid="+select;
       }
    });
});
</script>
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
							<td >
								<img src="/SmileTalk/images/front/photo.gif" />
								<font class="word2" > Edit Album
								</font>
							</td>
						</tr>
						<tr>
							<td valign="top"  align="center" style="border-bottom: 1px #D8DFEA solid;">
								<form action="/SmileTalk/album.do?flag=editAlbum&aid=${album.alId}" method="post">
								<table width="80%" cellpadding="5" cellspacing="5" border="0">
								
									<tr>
										<td align="right" width="20%">
											<font class="word3" style="font-weight: bold;">Album name:</font>
										</td>
										<td align="left">
											<input type="text" id="aname" name="name" class="wby" size="30" value="${album.alName}"/>
										</td>
									</tr>
									<tr>
										<td align="right" valign="top">
											<font class="word3" style="font-weight: bold;">Description:</font>
										</td>
										<td align="left">
											<textarea class="wbq" name="descript" id="adesc">${album.alDescription}</textarea>
										</td>
									</tr>
									
									<tr>
										<td>
											&nbsp;
										</td>
										<td align="left">
											<input type="submit" class="sub" value="edit album"
												style="width: 100px" />
											<input type="reset" class="sub" value="cancle"
												style="width: 60px" />
										</td>
									</tr>
								</table>
								</form>
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
		<!-- foot.jsp -->
		<jsp:include page="../public/foot.jsp"></jsp:include>
	</body>
</html>
