package com.smiletalk.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.smiletalk.domain.University;
import com.smiletalk.service.inter.UniversityServiceInter;

public class ChangeInfo extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	@SuppressWarnings("unchecked")
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
        response.setContentType("text/xml;charset=utf-8");
       
        response.setHeader("Cache-Control", "no-cache");
        
        PrintWriter out=response.getWriter();
        
        String proid=request.getParameter("proid");
      
        
    	//get spring container
		WebApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(this.getServletContext());
		//get from spring£¬get the UniversityServiceInter bean
		UniversityServiceInter universityService=(UniversityServiceInter) ctx.getBean("universityServiceImpl");
		
		List<University> uniList=universityService.getResult("from University where city.ciId=?", new Object[]{Integer.valueOf(proid)});
				
		String res="<allUniversities>";
		
		for (int i = 0; i < uniList.size(); i++) {
			University u = uniList.get(i);
			res += "<unis><id>" + u.getUniversityId() + "</id><name><![CDATA["+ u.getName() + "]]></name></unis>";
		}
		res += "</allUniversities>";
		out.write(res);
		out.close();
		System.out.println(res);
        
        
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
           this.doGet(request, response);
	}

	
}
