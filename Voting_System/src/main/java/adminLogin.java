

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class adminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public adminLogin() {
        super();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        String adminName = request.getParameter("admin_name");
        String password = request.getParameter("admin_pass");
        
        DatabaseManager db = new DatabaseManager();
		java.sql.Connection  con = db.getConnection();
        
		try{
			
			PreparedStatement preparedStatement = con.prepareStatement("select * from Admin where admin_name = '"+adminName+"' and admin_pass = '"+password+"'");
			ResultSet rs=((java.sql.Statement) preparedStatement).executeQuery("select * from Admin where admin_name = '"+adminName+"' and admin_pass = '"+password+"'");
			   
			if(rs.next())
			   {
				   HttpSession session=request.getSession();
				   session.setAttribute("adminname", adminName);
				   response.sendRedirect("AdminWelcome.jsp");
			     }
			   else  
			   {
				   out.println("WRONG CREDENTIALS");
			   }
		   }
		   catch (Exception e) {
	             out.println(e.getMessage());
		   }
	}

}
