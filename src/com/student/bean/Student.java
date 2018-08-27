package com.student.bean;

public class Student {

	private Integer id;//学生id
	private String name;//学生姓名
	private String telephone;//学生电话
	private String poslnumber;//学生邮编
	private String birthday;//学生生年月日
	private int age;//学生年齢
	private double score;//学生成績
	private String address;//学生住所
	private String mynumber;//学生個人番号

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public double getScore() {
		return score;
	}

	public void setScore(double score) {
		this.score = score;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getPoslnumber() {
		return poslnumber;
	}

	public void setPoslnumber(String poslnumber) {
		this.poslnumber = poslnumber;
	}

	/**
	 * @return mynumber
	 */
	public String getMynumber() {
		return mynumber;
	}

	/**
	 * @param mynumber セットする mynumber
	 */
	public void setMynumber(String mynumber) {
		this.mynumber = mynumber;
	}

}
