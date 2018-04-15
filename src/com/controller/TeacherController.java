package com.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.service.TeacherService;

@Controller
public class TeacherController {
	@Resource
	private TeacherService teacherservice = null;
	
	@RequestMapping(value="/Teacher/uploadC")
	public String uploadC(@RequestParam(value="filename") MultipartFile file,HttpServletRequest request,HttpServletResponse response)
	{
		System.out.println("开始上传文件..");
		if(file == null)
		{
			return null;
		}
		String name = file.getOriginalFilename();
		
		long size = file.getSize();
		
		if(name==null || ("").equals(name) && size==0) return null;
		
		boolean b = teacherservice.uploadC(name,file);
        if(b){
             String Msg ="批量导入EXCEL成功！";
             request.getSession().setAttribute("msg",Msg);    
        }else{
             String Msg ="批量导入EXCEL失败！";
             request.getSession().setAttribute("msg",Msg);
        } 
       return "Teacher/TeacherChooseProblem";
	}
	
	@RequestMapping(value="/Teacher/uploadF")
	public String uploadF(@RequestParam(value="filename") MultipartFile file,HttpServletRequest request,HttpServletResponse response)
	{
		System.out.println("开始上传文件..");
		if(file == null)
		{
			return null;
		}
		String name = file.getOriginalFilename();
		
		long size = file.getSize();
		
		if(name==null || ("").equals(name) && size==0) return null;
		
		boolean b = teacherservice.uploadF(name,file);
        if(b){
             String Msg ="批量导入EXCEL成功！";
             request.getSession().setAttribute("msg",Msg);    
        }else{
             String Msg ="批量导入EXCEL失败！";
             request.getSession().setAttribute("msg",Msg);
        } 
       return "Teacher/TeacherChooseProblem";
	}

	@RequestMapping(value="/Teacher/uploadM")
	public String uploadM(@RequestParam(value="filename") MultipartFile file,HttpServletRequest request,HttpServletResponse response)
	{
		System.out.println("开始上传文件..");
		if(file == null)
		{
			return null;
		}
		String name = file.getOriginalFilename();
		
		long size = file.getSize();
		
		if(name==null || ("").equals(name) && size==0) return null;
		
		boolean b = teacherservice.uploadM(name,file);
        if(b){
             String Msg ="批量导入EXCEL成功！";
             request.getSession().setAttribute("msg",Msg);    
        }else{
             String Msg ="批量导入EXCEL失败！";
             request.getSession().setAttribute("msg",Msg);
        } 
       return "Teacher/TeacherChooseProblem";
	}
}
