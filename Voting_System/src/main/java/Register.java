

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.setContentType("text/html");
		
        try (PrintWriter out = response.getWriter()) {
        	
           String fname = request.getParameter("name");
           String lname = request.getParameter("lastname");
           String voter_card_number = request.getParameter("voternumber");
           String address = request.getParameter("address");
           String dob = request.getParameter("dob");
           String contact = request.getParameter("number");
           String email = request.getParameter("email");
           
           
           DatabaseManager db = new DatabaseManager();
		   java.sql.Connection  con = db.getConnection();
		   
          PreparedStatement preparedStatement = con.prepareStatement("insert into voters (fname,sname,voter_card_number,addrs,dob,pnumber,email)values('"+fname+"','"+lname+"','"+voter_card_number+"','"+address+"','"+dob+"','"+contact+"','"+email+"')");
		  preparedStatement.executeUpdate();
//		  out.println("registration success");
		  response.sendRedirect("AdminWelcome.jsp");
        
        } catch (SQLException ex) {
        	System.out.println(ex.getMessage());
        } 
	}

}
