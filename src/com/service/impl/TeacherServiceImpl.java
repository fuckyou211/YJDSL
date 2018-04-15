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
        //��������EXCEL
        ReadExcel readExcel=new ReadExcel();
        //����excel����ȡ�ͻ���Ϣ���ϡ�
        List<Problemc> list = readExcel.getExcelInfo(name ,file);

        if(list != null){
            b = true;
        }
        
        //������ӿͻ���Ϣ��ע��ʵ��������Ҳ����ֱ�ӽ�customerList������Ϊ��������Mybatis����Ӧӳ���ļ���ʹ��foreach��ǩ����������ӡ���
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
        //��������EXCEL
        ReadExcel2 readExcel=new ReadExcel2();
        //����excel����ȡ�ͻ���Ϣ���ϡ�
        List<Problemf> list = readExcel.getExcelInfo(name ,file);

        if(list != null){
            b = true;
        }
        
        //������ӿͻ���Ϣ��ע��ʵ��������Ҳ����ֱ�ӽ�customerList������Ϊ��������Mybatis����Ӧӳ���ļ���ʹ��foreach��ǩ����������ӡ���
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
        //��������EXCEL
        ReadExcel3 readExcel=new ReadExcel3();
        //����excel����ȡ�ͻ���Ϣ���ϡ�
        List<Problemm> list = readExcel.getExcelInfo(name ,file);

        if(list != null){
            b = true;
        }
        
        //������ӿͻ���Ϣ��ע��ʵ��������Ҳ����ֱ�ӽ�customerList������Ϊ��������Mybatis����Ӧӳ���ļ���ʹ��foreach��ǩ����������ӡ���
        for(Problemm problemm:list){
        	this.teacherDao.addProblemm(problemm);
        }
        return b;
	}
	
	public void addProblemm(Problemm problemm)
	{
		
	}
}
