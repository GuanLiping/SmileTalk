package com.smiletalk.utils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.upload.FormFile;

public class myTools {

	//upload profile picture
	public static String uploadHead(HttpServletRequest request,FormFile ff,String id){
		 String newPhotoName="";
		 try{
			//create folder for each user
			String filePath=request.getSession().getServletContext().getRealPath("/");
			//filePath is the path \apache-tomcat-6.0.20\webapps\SmileTalk
			InputStream stream = ff.getInputStream();// read file
			String oldPhotoName=ff.getFileName();
			newPhotoName=id+oldPhotoName.substring(oldPhotoName.indexOf("."), oldPhotoName.length());
			String newFullNewPath=(filePath+"/images/"+id+"/head/").replace('/', File.separatorChar);
			System.out.println(newFullNewPath);
			
			//judoge newFullNewPath exit or not
			File f=new File(newFullNewPath);
			if(!f.isDirectory()){
				//not and make new one
				f.mkdirs();
				
			}
			
			
			OutputStream bos = new FileOutputStream(newFullNewPath+ newPhotoName);
			int len = 0;
			byte[] buffer = new byte[8192];
			while ((len = stream.read(buffer, 0, 8192)) != -1) {
				bos.write(buffer, 0, len);// save the file
			}
			bos.close();
			stream.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return newPhotoName;
	}
	
	
	public static String uploadPhoto(HttpServletRequest request,FormFile ff,String uid,String albumId){
		
		 String newPhotoName="";
		 try{
			//create folder for each user
			String filePath=request.getSession().getServletContext().getRealPath("/");
			
			InputStream stream = ff.getInputStream();
			String photoName=ff.getFileName();
			String newFullNewPath=(filePath+"/images/"+uid+"/album/"+albumId+"/").replace('/', File.separatorChar);
			
			File f=new File(newFullNewPath);
			if(!f.isDirectory()){
			
				f.mkdirs();
				
			}
			
			newPhotoName=UUID.randomUUID().toString() + photoName.substring(photoName.indexOf("."), photoName.length());
			OutputStream bos = new FileOutputStream(newFullNewPath+ newPhotoName);
			int len = 0;
			byte[] buffer = new byte[8192];
			while ((len = stream.read(buffer, 0, 8192)) != -1) {
				bos.write(buffer, 0, len);
			}
			bos.close();
			stream.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return newPhotoName;
		}
	
}
