package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.pojo.ExamPost;
import com.pojo.PaperMessage;
import com.pojo.Problemc;
import com.pojo.Problemf;
import com.pojo.Problemm;
import com.pojo.Teacher;
@Repository
public interface TeacherDAO {
	//�����Ծ���Ϣ
	public void addPaperMessage(@Param(value="pname") String pname,@Param(value="pman") String pman);
	
	//����ѡ���⵽�Ծ���
	public void addPaperMessageC(@Param(value="list") List<Problemc> list);
	
	//��������⵽�Ծ���
	public void addPaperMessageF(@Param(value="list") List<Problemf> list);
	
	//���������⵽�Ծ���
	public void addPaperMessageM(@Param(value="list") List<Problemm> list);
	
	//����ѡ����
	public void addProblemc(Problemc problemc);
	
	//���������
	public void addProblemf(Problemf problemf);
	
	//����������
	public void addProblemm(Problemm problemm);
	
	//��������-չʾ�����Ծ�
	public List<PaperMessage> getAllPaperMessage();
	
	//��������-���ƿ�����Ϣ
	public void addExamPost(ExamPost exampost);
	
	//�Ծ�ά��-չʾ�����Ծ�
	public void getAllPaper();
	
	//�Ծ�ά��-�����Ծ�
	public void findPaper(@Param(value="type")String type,@Param(value="value")String value);
	
	//�Ծ�ά��-ɾ���Ծ�
	public void deletePaper(String pname);
	
	//��������-չʾ��������
	public void getAllType();
	
	//��������-��������
	public void addType();
	
	//��������-ɾ������
	public void deleteType();
}
