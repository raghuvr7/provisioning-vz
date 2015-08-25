package verizon;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeviceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeviceServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String zipcode=request.getParameter("zipcode");
		System.out.println(zipcode);
		List<Device> ld = new DAOOrderToBillOracle().getDeviceIdsInZipcode(zipcode);
		PrintWriter out=response.getWriter();
		out.write("Device: ");
		out.write("<select id='device' onchange='javascript:checkPort()'>");
		out.write("<option>");
		out.write("Select Device");
		out.write("</option>");
		for(int i=0; i<ld.size(); i++){
			out.write("<option>");
				
				out.write(""+ld.get(i).getDeviceId());
			out.write("</option>");
		}
		out.write("</select>");
		
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
