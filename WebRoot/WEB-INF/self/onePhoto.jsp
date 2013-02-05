<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<link rel="stylesheet" href="/SmileTalk/css/css/updPersonInfo.css" type="text/css"></link>
	<script type="text/javascript">
	<!--
		var content="";
		var xmlrequest;
		var rrid="";
		var index="";
		var ddid="";
	function delPC(o){
		index = o.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.rowIndex;
		document.getElementById("divDelPC").style.display="";
		ddid=o.id;
	}

	function canselDel(){
		index = "";
		ddid="";
		document.getElementById("divDelPC").style.display="none";
	}

	function delPC2(){
		//window.alert(aid.substr(1));
		var tbl = document.getElementById("mypc");
		tbl.deleteRow(index);
		
		createXMLHttpRequest();
		if (xmlrequest) {
			var req = "DelPC?id="+ddid;
			xmlrequest.open("get", req, true);
			xmlrequest.onreadystatechange = process2;
			xmlrequest.send(req);
		}
	
	}
	
	//-->
	</script>
	</head>
	<body>

		<jsp:include page="head.jsp"></jsp:include>
		<div class="personal_main">
			<div class="personal_left">
				<table width="100%" border="0" cellspacing="1" cellpadding="10">
					<tr>
						<td>
							<div class="divTbl">
								<table width="100%" cellspacing="0" cellpadding="5"
									class="tblDiv">
									<tr>
										<td colspan="2">
											<font class="word2">my album</font>
											<font class="word2" style="font-weight: normal"> -
												${album.alName} </font>
										</td>
									</tr>
									<tr>
										<td style="border-bottom: 1px #D8DFEA solid;">
											<font class="word4">x  / x  | <a
												href="/SmileTalk/album.do?flag=myAlbumUI&oid=xx&pageNo=1&aid=xx"
												class="xh"> back to album</a> </font>
										</td>
										<td style="border-bottom: 1px #D8DFEA solid;" align="right">
											<font class="word4"> <a
												href="album.do?type=onePhoto&pid=xx&oid=xx&aid=xx&pageNo=1"
												class="xh">Last</a> / <a
												href="album.do?type=onePhoto&pid=xx&oid=xx&aid=xx&pageNo=1"
												class="xh">Next</a>
											</font>
										</td>
									</tr>
									<tr>
										<td valign="top" colspan="2" align="center">
											<a
												href="album.do?type=onePhoto&uid=xx&pid=xx&pP=xx&pageNo=1">
												<img src="/SmileTalk/images/${uid}/album/${pid }/${pP}" alt="click see next one" width="640px"
													height="480px" /> </a>

										</td>

									</tr>


									<tr>
										<td>
											<font class="word4">comment</font>
										</td>
										<td align="right">
											<font class="word4">form my album：</font>
											<br/>
										</td>
									</tr>


									<tr>
										<td style="border-bottom: 1px #DDDDDD solid;">
											<font class="word3"> upload on ${photo.PIndate} </font>
										</td>
										<td style="border-bottom: 1px #DDDDDD solid;" align="right">
											<font class="word3"> view(1) | comment(11) </font>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<table width="100%" cellspacing="0"
												cellpadding="5" id="mypc">
												<!-- comment start -->
												<tr>
													<td style="border-bottom: 1px #D8DFEA solid;">
														<table width="100%" border="0" cellspacing="1"
															cellpadding="3">
															<tr>
																<td rowspan="2" width="8%">
																	<a href="profile.do?type=feed&oid=xx"> <img
																			src="/SmileTalk/images/userhead/u1.gif" width="50px"
																			height="50px" />
																	</a>
																</td>
																<td>
																	<a href="profile.do?type=feed&oid=xx" class="xh">comment by </a>

																</td>
																<td align="right" width="25%">
																	<font class="word3">2010-06-09 22:30 </font>&nbsp;
																	<a href="javascript:void(0);" class="xh" id="xx"
																		onclick="delPC(this)">delete</a>
																</td>
															</tr>
															<tr>
																<td colspan="2">
																	<font class="word4">comment details</font>
																</td>
															</tr>
														</table>
													</td>
												</tr>
												<!-- comment end -->
											</table>
										</td>
									</tr>
									<tr>
										<td align="right" colspan="2">
											<table>
												<tr>
													<td>
														<font class="word2" style="font-size: 12px">xx</font>
													</td>
													<td>
														<font class="word2" style="font-size: 12px">Total xx</font>
													</td>

													<td>
														<a
															href="album.do?type=onePhoto&pid=xx&oid=xx&aid=xx&pageNo=1"
															class="xh"> << 1 </a>
													</td>
													<td>
														...
													</td>
													<td>
														<a
															href="album.do?type=onePhoto&pid=xx&oid=xx&aid=xx&pageNo=xx"
															class="xh"> < Last</a>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<table width="100%"  cellspacing="1"
												cellpadding="5">
												<tr>
													<td colspan="2">
														<textarea class="wbq" style="width: 600px" id="cont"></textarea>
													</td>
												</tr>
												<tr>
													<td>
														<input class="sub" value="comment" type="button"
															onclick="addPC()" style="width: 100px" />
													</td>
													<td>
														&nbsp;
													</td>
												</tr>
											</table>
										</td>
									</tr>

								</table>
							</div>
						</td>
						<td align="center" valign="top">
							<img src="/SmileTalk/images/front/photoright.jpg" />
						</td>
					</tr>
				</table>
			</div>
		</div>
		<!-- 引入foot.jsp -->
		<jsp:include page="../public/foot.jsp"></jsp:include>
		<!-- 提示是否真的删除 start -->
		<div id="divDelPC" style="border: 9px #878787 solid ;width: 400px;display: none;top: 700px;left: 400px;position: absolute;">
			<table  width="400px" style="line-height: 27px;" cellspacing="0" cellpadding="10px">
				<tr>
					<td   style="color: white;background-color: #6D84B4;font-size: 14px;"> <b>delete comment</b></td>
				</tr>
				<tr style="border-bottom:1px #CCCCCC solid;background-color:#FFFFFF" class="word4">
					<td>Are you sure to delete?</td>
				</tr>
				<tr>
					<td  align="right" bgcolor="#F7F3FF" >
						<input type="button" onclick="delPC2()" value="Yes" style="color: white;background-color: #3B5888;padding: 3px; width: 60px"  />
						<input type="button" onclick="canselDel()"  value="cancle"  style="color: black;background-color: #white;padding: 3px; width: 60px"/>
					</td>
				</tr>
			</table>
		</div>
		<!-- really delete end -->
	</body>
</html>
