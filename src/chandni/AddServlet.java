package chandni;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddServlet
 */
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw = response.getWriter();
		// pw.print("fkjhntei");
		// Device d=new Device();
		String deviceid = request.getParameter("inp1");
		String partnumber = request.getParameter("inp2");
		String manufacturer = request.getParameter("inp3");
		String zipcodestring= request.getParameter("inp4");
		String portidstring = request.getParameter("inp5");
		String status = request.getParameter("inp6");
		String bandwidthstring = request.getParameter("inp7");
		int zipcode=Integer.parseInt("zipcodestring");
		int portid=Integer.parseInt("portidstring");
		int bandwidth=Integer.parseInt("bandwidth");
		
		//Device d=new Device(*,in1,in2,in3,in4,in5,in6,in7);
		 DAOOrderToBillOracle dao=new  DAOOrderToBillOracle();
		int a=dao.insertDevice(deviceid,partnumber,manufacturer,zipcode,portid,status,bandwidth);
        PrintWriter p=response.getWriter();
        pw.print("Your device has been added");
		
		System.out.println(deviceid);
		System.out.println(partnumber);
		System.out.println(manufacturer);
		System.out.println(zipcode);
		System.out.println(portid);
		System.out.println(status);
		System.out.println(bandwidth);
		

		
		/*
		 * pw.print(in3); pw.print(in4); pw.print(in5); pw.print(in6);
		 * pw.print(in7);
		 */

		/*
		 * d=daoorder.addDevice(); daoorder.print();
		 */

	}
}
