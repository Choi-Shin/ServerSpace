[문항3]  테이블과 매핑하여 사용할 Member라는 DTO를 
조건에 맞게 구현 하시오
1) default 생성자만 있음(생성자 생략)
2) 멤버변수는 private로 하고 getter, setter method를 
통하여 정보 세팅 및 조회하도록 구성
3) reg_date는 java.sql.Date
----------------------------
[답안]
import java.sql.Date;

public class MemberDTO {
	private String id;
	private String password;
	private String name;
	private String address;
	private String tel;
	private Date reg_date;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
}