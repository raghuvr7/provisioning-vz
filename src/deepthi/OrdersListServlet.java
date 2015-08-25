package deepthi;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.DAOOrderToBill;
import DAO.DAOOrderToBillOracle;
import DAO.Order;
public class OrdersListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int orderid;
		String ordertype;
		orderid=Integer.parseInt(request.getParameter("orderRadio"));
		DAOOrderToBill dob = new DAOOrderToBillOracle();
		List<Order> orderlist= dob.getProvisionReadyOrders();
		
		for (int i=0;i<orderlist.length;i++)
		{
			if(orderlist[i].orderId == orderid)
			{
				ordertype = orderlist[i].orderType;
			}
		}
		
		HttpSession session=request.getSession();
		session.setAttribute("orderKey",orderid);
		
		if(ordertype=="add")
		{
			response.sendRedirect("AddOrder.jsp");  
		}
		
		else if(ordertype=="modify")
		{
			response.sendRedirect("ModifyOrder.jsp");
		}
		
		else
		{
			response.sendRedirect("DisconnectOrder.jsp");
		}
	
	}
}
	/*protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int orderId;
		String orderType;
		
		orderId=Integer.parseInt(request.getParameter("orderRadio"));
		
		System.out.println(orderId);
		System.out.println(orderType);
		
		if(orderType=="add"){
			response.sendRedirect("AddOrder.jsp");  
		}
		else if(orderType=="modify"){
			response.sendRedirect("ModifyOrder.jsp");
		}
		else{
			response.sendRedirect("DisconnectOrder.jsp");
		}
	}*/
	


