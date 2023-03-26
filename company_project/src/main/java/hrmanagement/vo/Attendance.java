package hrmanagement.vo;

public class Attendance {
	@Override
	public String toString() {
		return "Attendance [num=" + num + ", em_num=" + em_num + ", check_in=" + check_in + ", check_out=" + check_out
				+ ", late=" + late + ", early_leave=" + early_leave + ", vacation=" + vacation + ", memo=" + memo + "]";
	}

	private int num;
	private int em_num;
	private String check_in;
	private String check_out;
	private int late;
	private int early_leave;
	private int vacation;
	private String memo;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getEm_num() {
		return em_num;
	}

	public void setEm_num(int em_num) {
		this.em_num = em_num;
	}

	public String getCheck_in() {
		return check_in;
	}

	public void setCheck_in(String check_in) {
		this.check_in = check_in;
	}

	public String getCheck_out() {
		return check_out;
	}

	public void setCheck_out(String check_out) {
		this.check_out = check_out;
	}

	public int getLate() {
		return late;
	}

	public void setLate(int late) {
		this.late = late;
	}

	public int getEarly_leave() {
		return early_leave;
	}

	public void setEarly_leave(int early_leave) {
		this.early_leave = early_leave;
	}

	public int getVacation() {
		return vacation;
	}

	public void setVacation(int vacation) {
		this.vacation = vacation;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

}
