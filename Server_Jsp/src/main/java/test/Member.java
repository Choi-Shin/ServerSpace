package test;

import java.sql.Date;

public class Member {

	private String id;
	private String password;
	private String name;
	private Date reg_date;

//	 3. 테이블과 매핑하여 사용할 Member라는 DTO를 조건에 맞게 구현 하시오
//	 1) default 생성자만 있음(생성자 생략)
//	 2) 멤버변수는 private로 하고 getter, setter method를 통하여 정보 세팅 및 조회하도록 구성
//	 3) reg_date는 java.sql.Date

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
}