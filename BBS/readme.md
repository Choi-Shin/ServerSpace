#BBS app Introduction

---
###기능적 구조
+ 회원 파트
  - 회원가입
  - 로그인
  - 로그아웃
  - 암호변경
+ 게시판 파트
  - 게시판 목록
  - 게시글 보기
  - 글쓰기
  - 글수정
  - 글삭제
---
###회원파트 패턴 구조
+ M
  - member.command.Member
  (회원 DTO)
  [메소드 보기](#member)
  - member.service.JoinRequest
  (회원 가입을 위한 DTO)
  [메소드보기](#join-request)
  - auth.controller.User
  (로그인 회원 DTO)

+ V
  - index.jsp(메인화면)
  - view
	- changePwdForm.jsp
	컨트롤러: 
	member.command.ChangePasswordHandler
	- changePwdSuccess.jsp
	- joinForm.jsp
	- joinSuccess.jsp
	- loginForm.jsp
-----

#####실행 흐름
1. web.xml에 매핑된 ControllerURI는 
   시작과 동시에 실행되는 파일이다. (load on startup)
   프로퍼티의 key(*.do)와 value(파일 경로)를 이용하여
   각 이름에 따른 handler Class의 새 인스턴스를 생성한다.
2. jsp가 *.do를 호출하면 ControllerURI가 get or post로
   요청을 받아 각 이름의 핸들러 instance를 생성한다.




----

###M(model)

####member
<details>
<summary>Constructor using field()</summary>
<div markdown="1">

~~~java
public Member(String id, String name, String password, Date regDate) {
		this.id = id;
		this.name = name;
		this.password = password;
		this.regDate = regDate;
	}
~~~

</div>
</details>

<details>
<summary>Getter()</summary>
<div markdown="1">

~~~java
public String getId() {
		return id;
	}
~~~

~~~java
public String getName() {
		return name;
	}
~~~
~~~java
public String getPassword() {
	return password;
	}
~~~
~~~java
public Date getRegDate() {
	return regDate;
	}
~~~

</div>
</details>

<details>
<summary>matchPassword()</summary>
<div markdown="1">

~~~java
//parameter : String pwd
public boolean matchPassword(String pwd) {
	return password.equals(pwd);
	}
~~~

</div>
</details>

<details>
<summary>changePassord()</summary>
<div markdown="1">

~~~java
public void changePassword(String newPwd) {
	this.password = newPwd;
	}
~~~

</div>
</details>

####join-request

<details>
<summary>Getter & Setter</summary>
<div markdown="1">

~~~java
public String getId() {
		return id;
	}
~~~
~~~java
public void setId(String id) {
	this.id = id;
	}
~~~
~~~java
public String getName() {
	return name;
}
~~~
~~~java
public void setName(String name) {
		this.name = name;
	}
~~~

~~~java
public String getPassword() {
	return password;
	}
~~~
~~~java
public void setPassword(String password) {
	this.password = password;
	}
~~~
~~~java
public String getConfirmPassword() {
	return confirmPassword;
	}
~~~
~~~java
public void setConfirmPassword(String confirmPassword) {
	this.confirmPassword = confirmPassword;
	}
~~~
</div>
</details>


<details>
<summary>isPasswordEqualToConfirm()</summary>
<div markdown="1">

~~~java
public boolean isPasswordEqualToConfirm() {
	return password != null && password.equals(confirmPassword;
}
~~~
</div>
</details>

<details>
<summary>validate()</summary>
<div markdown="1">

-details
value값이 비어있으면 errors.put(fieldName, Boolean.TRUE)을 수행하는
checkEmpty() 메소드를 사용한다. 
isPasswordEqualToConfirm()로 암호와 확인 암호가 같은지
체크하여 역시 errors 맵에 담는다.
errors가 비어있지 않다는 것은 어떠한 에러가 존재한다는 의미

~~~java
//유효성 검증
public void validate(Map<String, Boolean> errors) {
	checkEmpty(errors, id, "id");
	checkEmpty(errors, name, "name");
	checkEmpty(errors, password, "password");
	checkEmpty(errors, confirmPassword, "confirmPassword");
	}
	if (!errors.containsKey("confirmPassword")) {
		if(!isPasswordEqualToConfirm()) {
			errors.put("notMatch", Boolean.TRUE);
		}
	}
~~~

</div>
</details>

<details>
<summary>checkEmpty()</summary>
<div markdown="1">

~~~java
private void checkEmpty(Map<String, Boolean> errors, 
						String value, String fieldName) {
	if (value == null || value.isEmpty()) {
		errors.put(fieldName, Boolean.TRUE);
	}
}
~~~
</div>
</details>
