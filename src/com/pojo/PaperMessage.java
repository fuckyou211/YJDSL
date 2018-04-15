package com.pojo;

import java.util.List;

public class PaperMessage {
	private int pid;
	private String pman;
	private String pname;
	private String pflag;
	private List<PaperProblem> list;//Ò»¶Ô¶à
	public List<PaperProblem> getList() {
		return list;
	}
	public void setList(List<PaperProblem> list) {
		this.list = list;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPman() {
		return pman;
	}
	public void setPman(String pman) {
		this.pman = pman;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPflag() {
		return pflag;
	}
	public void setPflag(String pflag) {
		this.pflag = pflag;
	}
}
