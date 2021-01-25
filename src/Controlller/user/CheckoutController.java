package Controlller.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.ICartDAO;
import DAO.impl.CartDAO;
import Model.CartItemModel;
import Model.CartModel;
import Model.UserModel;
import Service.ICartItemService;
import Service.ICartService;
import Service.IProductService;
import Service.IUserService;
import Service.impl.CartItemService;
import Service.impl.CartService;
import Service.impl.ProductService;
import Service.impl.UserService;
import utils.SendMail;

@WebServlet(urlPatterns = {"/checkout"})

public class CheckoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private IProductService productService;
	private ICartService cartService;
	private ICartItemService cartItemService;
	private ICartDAO cartDao;
	private IUserService userService;
    public CheckoutController() {
        productService = new ProductService();
        cartService = new CartService();
        cartItemService = new CartItemService();
        cartDao = new CartDAO();
        userService = new UserService();
    }
	
	
	public static final String DATE_FORMAT_NOW = "dd-mm-yyyy";


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("USERMODEL");
		UserModel user = (UserModel) obj;
		if(user != null) {
			UserModel usermodel = userService.getUserDetail(user.getId());
			if( Integer.parseInt(usermodel.getWallet()) > 250000 ) {
				CartModel cart = new CartModel();
				Calendar cal = Calendar.getInstance();
				SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT_NOW);
				String date =  sdf.format(cal.getTime());
				cart.setU_id(user.getId());
				cart.setBuydate(date);
				CartModel carts = cartService.save(cart);
				
				System.out.println(carts.getId() + "--cart id----");
		
				Object objCart = session.getAttribute("cart");
				if (objCart != null && carts != null) {
					
					Map<Integer, CartItemModel> map = (Map<Integer, CartItemModel>) objCart;

					for (CartItemModel cartItem : map.values()) {
						cartItem.setCart(cart);
						cartItem.setCart_id(carts.getId());
						String price = cartItem.getProduct().getPrice();
						int proid = cartItem.getProduct().getId();
						cartItem.setPro_id(proid);
						int totalPrice = cartItem.getQuantity() * Integer.parseInt(price);
						cartItem.setPrice(Integer.toString(totalPrice));
						SendMail sm = new SendMail();
						System.out.println(user.getUsername()+ "sdf");
    	    			sm.sendMail(user.getUsername(), "UNIFY", "Cảm ơn bạn đã mua hàng của chúng tôis ! ");
						cartItemService.save(cartItem);
						
						
						
					
						System.out.println(user.getId() + "id user");
						System.out.println(usermodel.getWallet() + "tien user");
						
							int walletstring = Integer.parseInt(usermodel.getWallet()) - totalPrice;
							UserModel users = new UserModel();
							users.setId(user.getId());
							users.setWallet(Integer.toString(walletstring));
							userService.updateWallet(users);
							
							System.out.println(totalPrice+ "--money");
				
						
						
						
						
						
					}
					
					session.removeAttribute("cart");
			    		out.println("<script type=\"text/javascript\">");
					   out.println("alert('Bạn đẵ mua hàng thành công');");
					   out.println("location='/LastEcommerce/';");
					   out.println("</script>");
		
				}
	    	}else {
	    		  out.println("<script type=\"text/javascript\">");
				   out.println("alert('Ví không dủ tiền xin hãy liên hệ admin để được hổ trợ ! ');");
				   out.println("location='/LastEcommerce/';");
				   out.println("</script>");
	    	}
		}
		else {
			 out.println("<script type=\"text/javascript\">");
			   out.println("alert('Bạn phải đăng nhập trước khi mua hàng !');");
			   out.println("location='/LastEcommerce/login?action=login';");
			   out.println("</script>");

		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
