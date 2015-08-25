package verizon;

public class Device {
	String deviceId;

	@Override
	public String toString() {
		return "Device [deviceId=" + deviceId + "]";
	}

	public String getDeviceId() {
		return deviceId;
	}

	public void setDeviceId(String deviceId) {
		this.deviceId = deviceId;
	}

	public Device(String deviceId) {
		super();
		this.deviceId = deviceId;
	}

	public Device() {
		super();
		// TODO Auto-generated constructor stub
	}

}
