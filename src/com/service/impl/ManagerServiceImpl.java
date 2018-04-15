package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.dao.ManagerDAO;
import com.pojo.Problemc;
import com.pojo.Teacher;
import com.service.ManagerService;
import com.tools.ReadExcel;

@Service
public class ManagerServiceImpl implements ManagerService{
	@Resource
	private ManagerDAO managerDao;
	
	@Override
	public int addTeacher(Teacher teacher)
	{
		return this.managerDao.addTeacher(teacher);
	}
	
	@Override
	public int deleteTeacher(String tid)
	{
		return this.managerDao.deleteTeacher(tid);
	}
	
	
	public List<Teacher> findTeacher(String type,String value)
	{
		return this.managerDao.findTeacher(type,value);
	}
	@Override
	public List<Teacher> getAllTeacher()
	{
		return this.managerDao.getAllTeacher();
	}
	
	
	
}
