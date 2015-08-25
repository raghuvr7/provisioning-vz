
public class Order {
	int customerId;
	int orderId;
	String orderStatus;
	String orderDueDate;
	int serviceAddressId;
	int serviceId;
	String orderType;
	
	public Order(){
		
	}

	public Order(int customerId, int orderId, String orderStatus,
			String orderDueDate, int serviceAddressId, int serviceId,
			String orderType) {
		super();
		this.customerId = customerId;
		this.orderId = orderId;
		this.orderStatus = orderStatus;
		this.orderDueDate = orderDueDate;
		this.serviceAddressId = serviceAddressId;
		this.serviceId = serviceId;
		this.orderType = orderType;
	}

	@Override
	public String toString() {
		return "Order [customerId=" + customerId + ", orderId=" + orderId
				+ ", orderStatus=" + orderStatus + ", orderDueDate="
				+ orderDueDate + ", serviceAddressId=" + serviceAddressId
				+ ", serviceId=" + serviceId + ", orderType=" + orderType + "]";
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

	public int getServiceAddressId() {
		return serviceAddressId;
	}

	public void setServiceAddressId(int serviceAddressId) {
		this.serviceAddressId = serviceAddressId;
	}

	public int getServiceId() {
		return serviceId;
	}

	public void setServiceId(int serviceId) {
		this.serviceId = serviceId;
	}

	public String getOrderType() {
		return orderType;
	}

	public void setOrderType(String orderType) {
		this.orderType = orderType;
	}

}
