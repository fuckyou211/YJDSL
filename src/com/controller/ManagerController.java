package com.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.pojo.Teacher;
import com.service.ManagerService;

@Controller
public class ManagerController {
	
	@Resource
	private ManagerService managerservice= null;
	
	//处理教师业务
	@RequestMapping(value="/Manager/addTeacher")
	public ModelAndView addTeacher(Teacher teacher,HttpServletRequest request)
	{
		//System.out.println("asdfasdfasdfasdfasdfasdfasf");
		System.out.println("添加");
		managerservice.addTeacher(teacher);
		ModelAndView mv = new ModelAndView();
		List<Teacher> tlist = managerservice.getAllTeacher();
		System.out.println(tlist.isEmpty());
		mv.addObject("tlist",tlist);
		mv.setViewName("Manager/ManagerShowTeacher");
		return mv;
	}
	
	@RequestMapping(value="/Manager/findTeacher")
	public ModelAndView findTeacher(@RequestParam(value="type") String type,@RequestParam(value="value") String value)
	{
		//System.out.println("asdfasdfasdfasdfasdfasdfasf");
		System.out.println(type);
		System.out.println(value);
		System.out.println("搜索");
		ModelAndView mv = new ModelAndView();
		if(value == "")
		{
			List<Teacher> tlist = managerservice.getAllTeacher();
			mv.addObject("tlist",tlist);
			mv.setViewName("Manager/ManagerShowTeacher");
			return mv;
		}
		//managerservice.findTeacher(type,value);
		
		List<Teacher> tlist = managerservice.findTeacher(type,value);
		System.out.println(tlist.size());
		System.out.println(tlist.isEmpty());
		mv.addObject("tlist",tlist);
		mv.setViewName("Manager/ManagerShowTeacher");
		return mv;
	}
	
	@RequestMapping(value="/Manager/deleteTeacher")
	public ModelAndView deleteTeacher(String tname,HttpServletRequest request)
	{
		//System.out.println("asdf");
		//System.out.println(tname);
		//System.out.println("asf");
		System.out.println("删除功能上线");
		int result = managerservice.deleteTeacher(tname);
		ModelAndView mv = new ModelAndView();
		List<Teacher> tlist = managerservice.getAllTeacher();
		System.out.println(tlist.isEmpty());
		mv.addObject("tlist",tlist);
		mv.setViewName("Manager/ManagerShowTeacher");
		return mv;
	}
	
	@RequestMapping(value="/Manager/showTeacher")
	public ModelAndView TeacherList()
	{
		System.out.println("show");
		ModelAndView mv = new ModelAndView();
		List<Teacher> tlist = managerservice.getAllTeacher();
		System.out.println(tlist.isEmpty());
		mv.addObject("tlist",tlist);
		mv.setViewName("Manager/ManagerShowTeacher");
		return mv;
	}
	
	
	//处理考生业务
	//修改个人密码
}
