package susritha;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetPortsServlet
 */
@WebServlet("/GetPortsServlet")
public class GetPortsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetPortsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DAOOrderToBillOracle dao = new DAOOrderToBillOracle();
		String devices=request.getParameter("devices");
		List<String> al=new ArrayList<String>();
		al=dao.getVacantPortIdsInDevice(devices);
		//String[] ar={"Port1","Port2","Port3"};;
		//System.out.println("Hi");
		PrintWriter pw=response.getWriter();
		
		pw.print("hi");
		
		
		pw.write("<select name=port>");
	Iterator<String> iterator=al.iterator();
	int i=0;
		while(iterator.hasNext()){
			pw.print("<option>");
				pw.print(al.get(i));
			i++;
			pw.print("</option>");
		}
		pw.print("</select>");
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
