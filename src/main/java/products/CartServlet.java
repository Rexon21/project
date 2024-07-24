package products;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/CartServlet") // URL mapping for the servlet
public class CartServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form parameters
        String productId = request.getParameter("product_id");
        String price = request.getParameter("price");
        String quantity = request.getParameter("quantity");

        // Simulate adding to cart (You can replace this with actual cart logic)
        // Here, we'll just print the received information
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Response message
        out.println("<html><body>");
        out.println("<h2>Product Added to Cart</h2>");
        out.println("<p>Product ID: " + productId + "</p>");
        out.println("<p>Price: " + price + "</p>");
        out.println("<p>Quantity: " + quantity + "</p>");
        out.println("</body></html>");
    }
}
