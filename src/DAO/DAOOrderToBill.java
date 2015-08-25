package DAO;
import java.util.List;


public interface DAOOrderToBill {
	
	
		public int insertDevice(String deviceId, String partNo, String manufacturer, int zipcode, int portId, String status, int bandwidthMbps, String deviceType);
		

		public List<Order> getProvisionReadyOrders() ;
		public int getZipcode(int shippingAddressId) ;

		public List<String> getDeviceIdsInZipcode(int zipcode);

		public int getDeviceSeqNo(int deviceId, int portId);

		public Device getDevice(int sequenceNumber);
		public List<Integer> getVacantPortIdsInDevice(int deviceId) ;

		public List<Integer> getAllPortIdsInDevice(int deviceId) ;
		public List<Integer> getReservedPortIdsInDevice(int deviceId) ;
		public List<Integer> getAllZipcodes();

	public int insertConnectionIntoCircuitDesign(int sourcePort,
			int destinationPort, int orderId, int customerId,
			int bandwidthMbps, String status, String dueDate,
			String modifiedDate) ;
		public int getCircuitOrderIdForChangeOrder(String serviceId) ;
		
		public void updateDeviceStatus(int sequenceNumber, String status);
		public void updateCircuitStatus(int orderId, String status);
		
		public Circuit getCircuitDetails(String orderId);
		public List<Circuit> getAllCircuitsOfCustomer(int customerId);
		
		public int getServiceAddressId(String custId);

		
		public Order getOrderDetails(int orderId) ;
		public String getServiceId(String orderId);
		public String getCustomerId(String orderId);
		
		
		

	


}
