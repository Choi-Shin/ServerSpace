package member.service;

import java.util.Map;

public class JoinRequest {
	private String id;
	private String name;
	private String password;
	private String confirmPassword;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	
	public boolean isPasswordEqualToConfirm() {
		return password != null && password.equals(confirmPassword);
	}
	
	public void validate(Map<String, Boolean> errors) {
		checkEmpty(errors, id, "id");
		checkEmpty(errors, name, "name");
		checkEmpty(errors, password, "password");
		checkEmpty(errors, confirmPassword, "confirmPassword");
		// 비밀번호 확인 키값이 에러라는 맵에 존재하지 않는 경우(값이 있는 경우)
		if (!errors.containsKey("confirmPassword")) {
			// 입력한 비밀번호와 비밀번호 확인이 같지 않은 경우 (에러맵에 notMatch 키를 저장)
			if(!isPasswordEqualToConfirm()) {
				errors.put("notMatch", Boolean.TRUE);
			}
		}
	}
	
	private void checkEmpty(Map<String, Boolean> errors, 
			String value, String fieldName) {
		// 각 입력값이 비어있거나 null값이면 에러라는 맵에 필드명과 부울을 저장
		if (value == null || value.isEmpty())
			errors.put(fieldName, Boolean.TRUE);
	}
}
