package Login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String login = req.getParameter("campo_login");
		String password = req.getParameter("campo_password");
		
		usuario usuario1 = new usuario();
		usuario1.login = "admin";
		usuario1.password = "admin";


		
		if(login.equals(usuario1.login) && password.equals(usuario1.password) ) {
			HttpSession session = req.getSession();
			
			session.setAttribute("usuario", "jefferson");
			session.setAttribute("estaLogado", true);
			session.setMaxInactiveInterval(3600);
			
			System.out.println("tudo certo");
			resp.sendRedirect("/Session/Segura.jsp");
		}else {
			req.setAttribute("erro","login ou senha incorreta");
			RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
			rd.forward(req, resp);
			System.out.println("/Session/login.jsp?msg=login ou senha incorretas ");
			
		}
		
	}
}
