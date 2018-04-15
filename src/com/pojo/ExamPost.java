package com.pojo;

import java.util.Date;

public class ExamPost {
	private int eid;
	private int epid;
	private String ename;
	private String eposter;
	private String epman;
	private int etime;
	private Date edate;
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public int getEpid() {
		return epid;
	}
	public void setEpid(int epid) {
		this.epid = epid;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getEposter() {
		return eposter;
	}
	public void setEposter(String eposter) {
		this.eposter = eposter;
	}
	public String getEpman() {
		return epman;
	}
	public void setEpman(String epman) {
		this.epman = epman;
	}
	public int getEtime() {
		return etime;
	}
	public void setEtime(int etime) {
		this.etime = etime;
	}
	public Date getEdate() {
		return edate;
	}
	public void setEdate(Date edate) {
		this.edate = edate;
	}
	
}
