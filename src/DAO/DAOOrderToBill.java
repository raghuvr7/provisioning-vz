import java.util.List;


public interface DAOOrderToBill {
	
	
		public int insertDevice(String deviceId, String partNo, String manufacturer, int zipcode, int portId, String status, int bandwidthMbps, String deviceType);
		

		public List<Order> getProvisionReadyOrders() ;
		public int getZipcode(int serviceAddressId) ;

		public List<String> getDeviceIdsInZipcode(int zipcode);

		public int getDeviceSeqNo(String deviceId, int portId);

		public Device getDevice(int sequenceNumber);
		public List<Integer> getVacantPortIdsInDevice(String deviceId) ;

		public List<Integer> getAllPortIdsInDevice(String deviceId) ;
		public List<Integer> getReservedPortIdsInDevice(String deviceId) ;
		public List<Integer> getAllZipcodes();

	public int insertConnectionIntoCircuitDesign(int sourcePort,
			int destinationPort, int orderId, int customerId,
			int bandwidthMbps, String status, String dueDate,
			String modifiedDate) ;
		public int getCircuitOrderIdForChangeOrder(String serviceId) ;
		
		public void updateDeviceStatus(int sequenceNumber, String status);
		public void updateCircuitStatus(int orderId, String status);
		public void updateDestinationPort(int oldOrderId, int destSequenceNo);
		public Circuit getCircuitDetails(int orderId);
		public List<Circuit> getAllCircuitsOfCustomer(int customerId);
		
		
		public int getServiceAddressId(String custId);

		
		public Order getOrderDetails(int orderId) ;
		public String getServiceId(int orderId);
		public String getCustomerId(int orderId);
		
		
		
		
		

	


}
