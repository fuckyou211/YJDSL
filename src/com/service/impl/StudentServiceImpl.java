package com.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.StudentDAO;
import com.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService{
	@Resource
	private StudentDAO studentDao;
}
