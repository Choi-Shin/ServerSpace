package ch18.mvc.vo;

public class EmpDTO {
	private String empno;
	private String ename;
	private String sal;
	private String deptno;
	public String getEmpno() {
		return empno;
	}
	public void setEmpno(String empno) {
		this.empno = empno;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getSal() {
		return sal;
	}
	public void setSal(String sal) {
		this.sal = sal;
	}
	public String getDeptno() {
		return deptno;
	}
	public void setDeptno(String deptno) {
		this.deptno = deptno;
	}
	
	@Override
	public String toString() {
		return "사원번호 : " + empno + "<br>" +
			   "사원명 : " + ename + "<br>" +
			   "급여 : " + sal + "<br>" +
			   "부서명 : " + deptno;
	}
}
