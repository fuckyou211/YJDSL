package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.pojo.Problemc;
import com.pojo.Teacher;
@Repository
public interface ManagerDAO {
	public int addTeacher(Teacher teacher);
	public int deleteTeacher(String tid);
	public List<Teacher> findTeacher(@Param(value="type")String type,@Param(value="value")String value);
	public List<Teacher> getAllTeacher();
	public void addProblemc(Problemc problemc);
}
