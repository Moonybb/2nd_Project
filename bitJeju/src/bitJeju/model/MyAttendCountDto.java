package bitJeju.model;

public class MyAttendCountDto {
	private int hakbun;
	private int checkDay;
	private int missDay;
	private int tardy;
	private double rate;
	
	public MyAttendCountDto() {
		
	}
	public MyAttendCountDto(int hakbun, int checkDay, int missDay, int tardy, double rate) {
		super();
		this.hakbun = hakbun;
		this.checkDay = checkDay;
		this.missDay = missDay;
		this.tardy = tardy;
		this.rate = rate;
	}
	@Override
	public String toString() {
		return "MyAttendCountDto [hakbun=" + hakbun + ", checkDay=" + checkDay + ", missDay=" + missDay + ", tardy="
				+ tardy + ", rate=" + rate + "]";
	}
	public int getHakbun() {
		return hakbun;
	}
	public void setHakbun(int hakbun) {
		this.hakbun = hakbun;
	}
	public int getCheckDay() {
		return checkDay;
	}
	public void setCheckDay(int checkDay) {
		this.checkDay = checkDay;
	}
	public int getMissDay() {
		return missDay;
	}
	public void setMissDay(int missDay) {
		this.missDay = missDay;
	}
	public int getTardy() {
		return tardy;
	}
	public void setTardy(int tardy) {
		this.tardy = tardy;
	}
	public double getRate() {
		return rate;
	}
	public void setRate(double rate) {
		this.rate = rate;
	}
	
	
}
