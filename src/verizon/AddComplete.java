package verizon;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import DAO.DAOOrderToBillOracle;
import DAO.Device;
import DAO.Order;


public class AddComplete extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Order order=(Order)request.getAttribute("order");
		int sport=(int)request.getAttribute("port");
		int dport=(int)request.getAttribute("dport");
		int orderid=(int)session.getAttribute("orderkey");
		int custid=order.getCustomerId();
		int ddev=(int)request.getAttribute("ddevice");
		String dued=order.getOrderDueDate();
		int saddid=order.getShippingAddressId();
		
		
		DAOOrderToBillOracle dest=new DAOOrderToBillOracle();
		int seqnum= dest.getDeviceSeqNo(ddev, dport);
		
		Device d=dest.getDevice(seqnum);
		int bwidth=d.getBandwidthMbps();
		String status=d.getStatus();
		
		
		 DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		   Date date = new Date();
		   String mdate = dateFormat.format(date);
		
		int result= dest.insertConnectIntoCircuitDesign(sport,dport,orderid,bwidth,status,dued,saddid,mdate);
		
		if(result>0)
		{
			response.sendRedirect("AddComplete.jsp");
		}
		else
		{
			response.sendRedirect("AddIncomplete.jsp");
		}
		
	}

	

}
