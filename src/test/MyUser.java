package test;

public class MyUser {

	private String name;
	private int age;
	private String address;
	public MyUser (String name, int age, String address) {
		super();
		this.address=address;
		this.age= age;
		this.name=name;
	}
	
	public String getAddress() {
		return address;
	}
	public int getAge() {
		return age;
	}
	public String getName() {
		return name;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public void setName(String name) {
		this.name = name;
	}
}
