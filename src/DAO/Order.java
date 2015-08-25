package DAO;
public class Order {
	int customerId;
	int orderId;
	String orderStatus;
	String orderDueDate;
	int shippingAddressId;
	String orderType;
	public Order(int customerId, int orderId, String orderStatus,
			String orderDueDate, int shippingAddressId, String orderType) {
		super();
		this.customerId = customerId;
		this.orderId = orderId;
		this.orderStatus = orderStatus;
		this.orderDueDate = orderDueDate;
		this.shippingAddressId = shippingAddressId;
		this.orderType = orderType;
	}
	public String getOrderType() {
		return orderType;
	}
	public void setOrderType(String orderType) {
		this.orderType = orderType;
	}
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	public String getOrderDueDate() {
		return orderDueDate;
	}
	public void setOrderDueDate(String orderDueDate) {
		this.orderDueDate = orderDueDate;
	}
	public int getShippingAddressId() {
		return shippingAddressId;
	}
	public void setShippingAddressId(int shippingAddressId) {
		this.shippingAddressId = shippingAddressId;
	}
	
	
	public Order(){
		
	}

}
