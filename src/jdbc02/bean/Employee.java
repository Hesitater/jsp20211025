package jdbc02.bean;

public class Employee {
	private String lastName;
	private String firstName;
	private String BirthDate;
	
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public String getBirthDate() {
		return BirthDate;
	}
	
	public void setBirthDate(String birthDate) {
		BirthDate = birthDate;
	}
}
