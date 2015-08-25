

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DecisionServlet
 */
public class DecisionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String selection=request.getParameter("selectoption");
		
		//System.out.println("hree");
		if(selection.equals("modify")){
			System.out.println("modify");
			RequestDispatcher rd=request.getRequestDispatcher("modifyinventory.jsp");
			rd.forward(request, response);
		}
		
		else if(selection.equals("provision")){
			System.out.println("provison");
			RequestDispatcher rd=request.getRequestDispatcher("provision.jsp");
			rd.forward(request, response);
		}
		
		//System.out.println("here 2");
	
	}

}
