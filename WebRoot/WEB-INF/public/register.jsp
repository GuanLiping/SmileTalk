<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register Page</title>
<link rel="stylesheet" href="/SmileTalk/css/common.css" type="text/css"></link>
<link rel="stylesheet" href="/SmileTalk/css/register.css" type="text/css"></link>
<script type="text/javascript" src="/SmileTalk/js/jquery-1.6.2.js"></script>
<script type="text/javascript" src="/SmileTalk/js/publicJs.js"></script>
<script type="text/javascript" src="/SmileTalk/myAJAX/ajax_uni.js"></script>
<script type="text/javascript">


function chooseUniversity(){

if( $("#status").val()=="student"){
    $("#student1").show();

    if(($("#country").val()=="Other")||($("#country").val()=="Finland"&&$("#city").val()=="21")){
    $("#student1").hide();
    $("#student2").show();
    
    }else {
    $("#student2").hide();
    $("#student1").show();
    
    }


}else{
$("#student2").hide();
$("#student1").hide();
}
}


$(document).ready(function(){
    
    
    $("#selfChooseCountry").hide(); 
    $("#selfChooseCity").hide();
    $("#student2").hide();
    $("#student1").hide();	
    
    
    $("#country").change(function(){	  
    	if($("#country").val()=="Other"){ 	 	
    	   $("#chooseCity").hide();
    	   $("#selfChooseCountry").show(); 
           $("#selfChooseCity").show(); 
    	}else if($("#country").val()=="Finland"){
    	   $("#chooseCity").show();
    	   $("#selfChooseCountry").hide(); 
           $("#selfChooseCity").hide(); 
    	}
    });
    
     $("#chooseCity").change(function(){	
      if($("#city").val()=="--Other--"){ 
        $("#selfChooseCity").show(); 
       }else{
       $("#selfChooseCity").hide(); 
       }
    });
    
     $("#status").change(function(){	
       $("#selfChooseCountry").hide(); 
       $("#selfChooseCity").hide();  
       chooseUniversity();
     });
     
     $("#country").change(function(){
     chooseUniversity();
     });
     
     $("#city").change(function(){	
     chooseUniversity();
     });
     
     
   $("form").submit(function(e){	 
	
    var span0=$("#name").val();
	var span1=$("input[name='sex']:checked").val();
    var span2=$("#status").val();
    var span3=$("#country").val();
    var span4=$("#city").val();
    var span5=$("input[name='company']").val();
    var span6=$("#study_type").val();
    var span7=$("university").find("option:selected").value();
    var span8=$("input[name='email']").val();
    var span9=$("#password1").val();
    var span10=$("#password2").val();
   
    
    if(span0==""){
    	$("#span0").show();
    	e.preventDefault();
    }else{
    	$("#span0").empty();
    	$("#span0").css("border","0px");
    }
    
    if(span1==undefined){
    	$("#span1").show();
    	e.preventDefault();
    }else{
    	$("#span1").empty();
    	$("#span1").css("border","0px");
    }
    
    if(span2==null){
    	$("#span2").show();
    	e.preventDefault();
    }else {
        $("#span2").empty();
	    $("#span2").css("border","0px");
	    
	    if(span2=="worker"){   			    
		    if(span5==""){
		    	$("#span5").show();
		    	e.preventDefault();
		    }else{
		    	$("#span5").empty();
		    	$("#span5").css("border","0px");
		    }
	    	    	 	
	    }else if(span2=="student"){	        
			if(span6=="--Choose--"){
		    	$("#span6").show();
		    	e.preventDefault();
		    }else{
		    	$("#span6").empty();
		    	$("#span6").css("border","0px");
		    }
		    
		    if(span7==undefined){
		      
		    	$("#span7").show();
		    	e.preventDefault();
		    }else{
		    	$("#span7").empty();
		    	$("#span7").css("border","0px");
		    }       
		              
	    }
    }
    
    if(span3=="--Country--"){
		    	$("#span3").show();
		    	e.preventDefault();
     }else{
		    	$("#span3").empty();
		    	$("#span3").css("border","0px");
		    	
     }
		     
	if(span4=="--Choose City--"){
		    	$("#span4").show();
		    	e.preventDefault();
    }else{
		    	$("#span4").empty();
		    	$("#span4").css("border","0px");
	}
    
    
    
    
    if(span8==""){
    	$("#span8").show();
    	e.preventDefault();
    }else{
    	$("#span8").empty();
    	$("#span8").css("border","0px");
    }
    
    if(span9==""){
    	$("#span9").show();
    	e.preventDefault();
    }else{
    	$("#span9").empty();
    	$("#span9").css("border","0px");
    }
    
    if(span10==""){
    	$("#span10").show();
    	e.preventDefault();
    }else{
    	$("#span10").empty();
    	$("#span10").css("border","0px");
    }
    
    if(span9!=span10){
        $("#span10").show();
    	e.preventDefault();
    }else{
        $("#span10").empty();
    	$("#span10").css("border","0px");
    }
    
});

});

</script>
</head>
<body>
  <jsp:include page="head.jsp"/>
  <div class="reg_main_frame">
       <!-- Join SimleTalk you can -->
       <div class="play_item">
           
       </div>  
       
       <!-- Table for register -->
       <div class="reg_table1">
            <span class="font6">Simple step, Easy register</span><br/>
          <form action="/SmileTalk/register.do?flag=regUser" method="post">  
            <table>
	               <tr>
		                <td class="tab_tb1">Real Name:</td>
		                <td class="tab_tb2"><input type="text" name="name" id="name"/></td>
		                <td><span class="spanVal" id="span0">Type your real name</span></td>
	               </tr>
	               <tr>
		                <td class="tab_tb1">Gender:</td>
		                <td><input type="radio" name="sex"/>Male<input type="radio" name="sex"/>Female</td>
		                <td><span class="spanVal" id="span1">Choose your Gender </span></td>
	               </tr>
	               <tr>
		                <td class="tab_tb1">Status:</td>
		                <td>
		                    <select size="3" id="status" name="userType" onchange="changeStatus(this);">
		                            <option value="worker">Working</option>
		                            <option value="student">Student</option>
		                            <option value="nothing">Other</option> 
		                    </select>
		                </td>
		                <td><span class="spanVal" id="span2">Choose your status</span></td>
	               </tr>
	               
	                <!-- consider Undergraduate student start-->
	                <tr class="student">
		                <td class="tab_tb1">Type:</td>
		                <td> 
		                    <select id="study_type" name="userType">
		                            <option>--Choose--</option>
		                            <option value="Undergraduate">Undergraduate</option>
		                            <option value="Master">Master student</option>
		                            <option value="Doctoral">Doctoral student</option> 
		                    </select>
		                </td>
		                <td><span class="spanVal" id="span6">Choose your study type</span></td>
	               </tr>
	               
	               
	               
	               
	               
	               <!-- consider working people start-->
                   <tr class="worker">
		                <td class="tab_tb1">Living Area:</td>
		                <td>
		                    <select id="country" name="otherCountry">
		                            <option>--Country--</option>
		                            <option>Finland</option>
		                            <option>Other</option>
		                    </select>
		                </td>
		                <td><span class="spanVal" id="span3">Choose your living country</span></td>
	               </tr>
	               <tr id="selfChooseCountry" class="worker">
		                <td class="tab_tb1">Country: </td>
		                <td>
		                  <input type="text" name="otherCountry"/>
		                </td>
		                <td><span class="spanVal" id="span4">Choose your living city</span></td>
	               </tr>
	                
	               
	               <tr id="chooseCity" class="worker">
		                <td class="tab_tb1"> </td>
		                <td>
		                    <select id="city" name="cityId" onchange="setProUnis(this)">
		                            <option>--Choose City--</option>
		                            <c:forEach var="city" items="${citylist}">
		                            <option value="${city.ciId}">${city.ciName}</option>          
		                            </c:forEach>
		                          
		                    </select>
		                </td>
		                <td><span class="spanVal" id="span4">Choose your living city</span></td>
	               </tr>
	               <tr id="selfChooseCity" class="worker">
		                <td class="tab_tb1">City:</td>
		                <td>
		                 <input type="hidden" name="cityId" value="21"/>
		                <input type="text" name="city"/>
		                </td>
		                <td><span class="spanVal" id="span4">Choose your living city</span></td>
	               </tr>
	               <tr class="worker_company">
		                <td class="tab_tb1">Company:</td>
		                <td><input type="text" name="company"/></td>
		                <td><span class="spanVal" id="span5">Choose your working company </span></td>
	               </tr>
	                <!-- consider working people end-->
	                
	                            
	               <tr class="student" id="student1">
		                <td class="tab_tb1">University:</td>
		                <td> 
		                 <select id="university" name="universityId">
		                            <option>--Choose School--</option>                        
		                 </select>
		              <!--  <input type="hidden" name="universityId" id="uuniversity"/>-->
		           </td>
		                <td><span class="spanVal" id="span7">Choose your university</span></td>
	               </tr>
	               
	               <tr class="student" id="student2">
		                <td class="tab_tb1">University:</td>
		                <td> 
		                  <input name="university" id="university"/>
		                <input type="hidden" name="universityId" id="uuniversity"/>
		           </td>
		                <td><span class="spanVal" id="span7">Choose your university</span></td>
	               </tr>
	               
	               <!-- consider Undergraduate student end--> 
	               <tr>
		                <td class="tab_tb1">Email:&nbsp;</td>
		                <td><input type="text" name="email"/><br/>
		                <img src="/SmileTalk/images/front/tanhao.png"/><span>Not have email, register for <a href="https://accounts.google.com/SignUp?service=mail&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F%3Ftab%3Dwm&ltmpl=default">Gmail</a>.</span>
		                </td>
		                <td><span class="spanVal" id="span8">Type your email</span></td>
	               </tr> 
	               <tr>
		                <td class="tab_tb1">Set Password:</td>
		                <td><input type="password" name="pwd" id="password1"/></td>
		                <td><span class="spanVal" id="span9">Type your password</span></td>
	               </tr>             
	               <tr>
		                <td class="tab_tb1">Re-enter Password:</td>
		           
		           
		                <td><input type="password" name="pwd2" id="password2"/></td>
		                <td><span class="spanVal" id="span10">Type your password again</span></td>
	               </tr>
	               <tr>
		                <td class="tab_tb1">CAPTCHA:</td>
		                <td>Type the verification code, change?</td>
		                <td>[1234]</td>
	               </tr>
	               <tr>
		                <td></td>
		                <td><input name="submit" type="submit" value="" class="button1"/></td>
		                <td></td>
	               </tr>
	                <tr>
		                <td></td>
		                <td><input name="check" type="checkbox"/><span class="font3">&nbsp;I read and agree to SmileTalk <a href="#">Privacy Policy</a></span></td>
		                <td></td>
	               </tr>
            </table>
          </form>
       </div> 
  </div> 
  <jsp:include page="foot.jsp"/>
  
  <!-- show university table start -->
<div class="divSch" id="uniDiv"
	style="display: none; position: absolute; top: 120px; left: 746px">
	<table border="1" align="center" height="380px" width="470px"
		bordercolor="#3B5888">
		<!-- show country -->
		<tr>
			<td bordercolor="#C3C3C3" width="500px">
			<c:forEach  var="country" items="${countrylist}">
			<a id="${country.coId}" onclick="setCoUnis(this)" class="xh"
			href="javascript:void(0);">${country.coName}</a>
			</c:forEach>
			</td>
		</tr>
		<!-- show all country city -->
		<tr>
		<td bordercolor="#C3C3C3">
			<div id="proTbl">
				<table width="100%">
					<tr>
						
							<td>
							<c:forEach var="city" items="${citylist}">
							<a onclick='setProUnis(this)' href="javascript:void(0);"
							class="xh" id="${city.ciId}">
							${city.ciName} </a>|
							</c:forEach>
							</td>
							
					</tr>
				</table>
			</div>
		</tr>
		<!-- show university of the city -->
		<tr>
		<td valign="top" bordercolor="#C3C3C3">
			<div style="width: 550px; height: 135px; overflow: auto"
				id="uniTbl">
				<table width="100%">
					<tr>
					<c:forEach var="university" items="${unilist}" varStatus="vs">
					<td>				  
					  <li>
					     <a onclick='showMyUni(this)' href="javascript:void(0);"
					      class="xh"  id='${university.universityId}'>${university.name }</a>
					  </li>
					</td>
					<c:if test='${vs.count%2==0}'>
					</tr><tr>
					</c:if>
					</c:forEach>
					</tr>
					
				</table>
			</div>
			</td>
			</tr>
			<tr>
			<td align="right" bordercolor="#FFFFFF">
				<input type="button" value="close" onclick="closeUniTbl()"
					style="color: white; background-color: #3B5888; padding: 3px;" />
				
			</td>
			</tr>
	</table>
</div>
<!-- university table end -->
</body>
</html>