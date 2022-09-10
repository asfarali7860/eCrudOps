package net.usermanagement.model;


public class User {
    protected int id;
    protected String eid;
    protected String name;
    protected String email;
    protected String dob;
    protected String gender;
    protected String phone;
    protected String address;
    protected String state;
    protected String pcode;
    protected String password;
    protected String country;
    protected String dept;
    protected String branch;
    protected String jdate;
    protected String spa;

    public User() {}

    public User(String eid, String name, String email, String dob, String gender, String phone, String address, String state, String pcode, String password, String country, String dept, String branch, String jdate, String spa) {
        super();
        this.eid = eid;
        this.name = name;
        this.email = email;
        this.dob = dob;
        this.gender = gender;
        this.phone = phone;
        this.address = address;
        this.state = state;
        this.pcode = pcode;
        this.password = password;
        this.country = country;
        this.dept = dept;
        this.branch = branch;
        this.jdate = jdate;
        this.spa = spa;
    }

    public User(int id, String eid, String name, String email, String dob, String gender, String phone, String address, String state, String pcode, String password, String country, String dept, String branch, String jdate, String spa) {
        super();
        this.id = id;
        this.eid = eid;
        this.name = name;
        this.email = email;
        this.dob = dob;
        this.gender = gender;
        this.phone = phone;
        this.address = address;
        this.state = state;
        this.pcode = pcode;
        this.password = password;
        this.country = country;
        this.dept = dept;
        this.branch = branch;
        this.jdate = jdate;
        this.spa = spa;
    }

    public String getEid() {
		return eid;
	}

	public void setEid(String eid) {
		this.eid = eid;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPcode() {
		return pcode;
	}

	public void setPcode(String pcode) {
		this.pcode = pcode;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getJdate() {
		return jdate;
	}

	public void setJdate(String jdate) {
		this.jdate = jdate;
	}

	public String getSpa() {
		return spa;
	}

	public void setSpa(String spa) {
		this.spa = spa;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getCountry() {
        return country;
    }
    public void setCountry(String country) {
        this.country = country;
    }
}