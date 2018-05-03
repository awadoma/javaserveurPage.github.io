package testServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public RegisterServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		 response.setContentType("text/html");
	        PrintWriter out = response.getWriter();
		
		String username = request.getParameter("username");
	    String password = request.getParameter("password");
	    String email = request.getParameter("email");
	    String language = request.getParameter("language");
	    Connection  con = null;
	    String url = "jdbc:mysql://localhost:3306/userdetails";
	    
	    String user = "root";
	    String pass ="zool/1985/ajeep/";
	  
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e1) {
				
				e1.printStackTrace();
			}
			try {
	            // Loading driver
	            Class.forName("com.mysql.jdbc.Driver");
	            
	            // Creating connection
	            con= DriverManager.getConnection(url, user,pass);
	            
	            // Statement (SELECT) / PreparedStatement (INSERT)
	            PreparedStatement statement = con.prepareStatement("insert into info values(?, ?, ?, ?)");
	            statement.setString(1, username);
	            statement.setString(2, password);
	            statement.setString(3, email);
	            statement.setString(4, language);
	            
	            int i = statement.executeUpdate();

	            if(i > 0)
	                out.print("You are successfully registered");
	            
	        } catch (ClassNotFoundException e) {
	            e.printStackTrace();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
			
		
	
	}


}
