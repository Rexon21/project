package LogIn;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.mysql.cj.protocol.Resultset;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Log")
public class Log extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		try (PrintWriter out = response.getWriter()) {
			String user=request.getParameter("User");
			String Passw =request.getParameter("Password");
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/UserDetails", "root", "Rexon@2002");
			Statement stmt = con.createStatement();
			ResultSet rs =stmt.executeQuery("select * from details");
			int count=0;
			while(rs.next()) {
			
				String Passwcheck=rs.getString("Password");
				String username=rs.getString("Email");
				String name=rs.getString("Name");
				if(user.equals(username)) {
					count=1;
					if(Passw.equals(Passwcheck)) {
						HttpSession session =request.getSession(true);
						session.setAttribute("Name", name);
						RequestDispatcher rp=request.getRequestDispatcher("FirstPage.jsp");
						rp.include(request, response);
						
					}else {
						request.setAttribute("password", "Invalid Password");
						RequestDispatcher rp=request.getRequestDispatcher("index.jsp");
						rp.forward(request, response);
					}
				}
			}
			if(count==0){
				request.setAttribute("user", "Invalid User");
				RequestDispatcher rp=request.getRequestDispatcher("index.jsp");
				rp.forward(request, response);
			}

		}catch(Exception e){
			System.out.println(e);
			
		}

	}

}
