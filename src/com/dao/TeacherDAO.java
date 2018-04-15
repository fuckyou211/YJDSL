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
	//增加试卷信息
	public void addPaperMessage(@Param(value="pname") String pname,@Param(value="pman") String pman);
	
	//增加选择题到试卷中
	public void addPaperMessageC(@Param(value="list") List<Problemc> list);
	
	//增加填空题到试卷中
	public void addPaperMessageF(@Param(value="list") List<Problemf> list);
	
	//增加主观题到试卷中
	public void addPaperMessageM(@Param(value="list") List<Problemm> list);
	
	//增加选择题
	public void addProblemc(Problemc problemc);
	
	//增加填空题
	public void addProblemf(Problemf problemf);
	
	//增加主观题
	public void addProblemm(Problemm problemm);
	
	//发布考试-展示所有试卷
	public List<PaperMessage> getAllPaperMessage();
	
	//发布考试-完善考试信息
	public void addExamPost(ExamPost exampost);
	
	//试卷维护-展示所有试卷
	public void getAllPaper();
	
	//试卷维护-搜索试卷
	public void findPaper(@Param(value="type")String type,@Param(value="value")String value);
	
	//试卷维护-删除试卷
	public void deletePaper(String pname);
	
	//试题类型-展示所有类型
	public void getAllType();
	
	//试题类型-新增类型
	public void addType();
	
	//试题类型-删除类型
	public void deleteType();
}
