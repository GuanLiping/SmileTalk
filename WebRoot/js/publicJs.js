function changeStatus(obj){
	
	if(obj.value=="worker"){
		$(".student").css("display","none");
		$(".worker").show();
		$(".worker_company").show();		
	}else if(obj.value=="student"){
		$(".student").show();
		$(".worker").css("display","none");	
		$(".worker_company").css("display","none");	
	}else{
		$(".student").css("display","none");
		$(".worker").show();
		$(".worker_company").css("display","none");	
	}
}

