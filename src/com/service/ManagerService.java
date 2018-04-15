package com.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.multipart.MultipartFile;

import com.pojo.Problemc;
import com.pojo.Teacher;

public interface ManagerService {
	public int addTeacher(Teacher teacher);
	public int deleteTeacher(String tid);
	public List<Teacher> findTeacher(@Param("type") String type,@Param("value") String value);
	public List<Teacher> getAllTeacher();

}
