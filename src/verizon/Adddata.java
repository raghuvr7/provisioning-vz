package verizon;
public class Adddata {
	int zipcode;

	public int getZipcode() {
		return zipcode;
	}

	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}

	public Adddata(int zipcode) {
		super();
		this.zipcode = zipcode;
	}

	public Adddata() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Adddata [zipcode=" + zipcode + "]";
	}

}
