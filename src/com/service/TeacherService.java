package com.service;

import org.springframework.web.multipart.MultipartFile;

import com.pojo.Problemc;
import com.pojo.Problemf;
import com.pojo.Problemm;

public interface TeacherService {
	public boolean uploadC(String name,MultipartFile file);
	public void addProblemc(Problemc problemc);
	public boolean uploadF(String name,MultipartFile file);
	public void addProblemf(Problemf problemf);
	public boolean uploadM(String name,MultipartFile file);
	public void addProblemm(Problemm problemm);
}
