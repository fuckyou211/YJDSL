package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.dao.TeacherDAO;
import com.pojo.Problemc;
import com.pojo.Problemf;
import com.pojo.Problemm;
import com.service.TeacherService;
import com.tools.ReadExcel;
import com.tools.ReadExcel2;
import com.tools.ReadExcel3;
@Service
public class TeacherServiceImpl implements TeacherService{
	@Resource
	private TeacherDAO teacherDao;
	public boolean uploadC(String name,MultipartFile file)
	{
		boolean b = false;
        //创建处理EXCEL
        ReadExcel readExcel=new ReadExcel();
        //解析excel，获取客户信息集合。
        List<Problemc> list = readExcel.getExcelInfo(name ,file);

        if(list != null){
            b = true;
        }
        
        //迭代添加客户信息（注：实际上这里也可以直接将customerList集合作为参数，在Mybatis的相应映射文件中使用foreach标签进行批量添加。）
        for(Problemc problemc:list){
        	this.teacherDao.addProblemc(problemc);
        }
        return b;
	}
	
	public void addProblemc(Problemc problemc)
	{
		
	}
	
	public boolean uploadF(String name,MultipartFile file)
	{
		boolean b = false;
        //创建处理EXCEL
        ReadExcel2 readExcel=new ReadExcel2();
        //解析excel，获取客户信息集合。
        List<Problemf> list = readExcel.getExcelInfo(name ,file);

        if(list != null){
            b = true;
        }
        
        //迭代添加客户信息（注：实际上这里也可以直接将customerList集合作为参数，在Mybatis的相应映射文件中使用foreach标签进行批量添加。）
        for(Problemf problemf:list){
        	this.teacherDao.addProblemf(problemf);
        }
        return b;
	}
	
	public void addProblemf(Problemf problemf)
	{
		
	}
	
	public boolean uploadM(String name,MultipartFile file)
	{
		boolean b = false;
        //创建处理EXCEL
        ReadExcel3 readExcel=new ReadExcel3();
        //解析excel，获取客户信息集合。
        List<Problemm> list = readExcel.getExcelInfo(name ,file);

        if(list != null){
            b = true;
        }
        
        //迭代添加客户信息（注：实际上这里也可以直接将customerList集合作为参数，在Mybatis的相应映射文件中使用foreach标签进行批量添加。）
        for(Problemm problemm:list){
        	this.teacherDao.addProblemm(problemm);
        }
        return b;
	}
	
	public void addProblemm(Problemm problemm)
	{
		
	}
}
