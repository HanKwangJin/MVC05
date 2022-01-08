package kr.kjca.frontcontroller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kj.kjca.model.MemberDAO;
import kj.kjca.model.MemberVO;
import kr.kjca.controller.Controller;
import kr.kjca.controller.MemberContentController;
import kr.kjca.controller.MemberDeleteController;
import kr.kjca.controller.MemberInsertController;
import kr.kjca.controller.MemberListController;
import kr.kjca.controller.MemberRegisterController;
import kr.kjca.controller.MemberUpdateController;


@WebServlet("*.do")
public class MemberFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
		request.setCharacterEncoding("utf-8");
		String url=request.getRequestURL().toString();
//		System.out.println(url);
		String uri=request.getRequestURI();
//		System.out.println(uri);
		String ctp=request.getContextPath();
//		System.out.println(ctp);
		String command=uri.substring(ctp.length());
		System.out.println(command);
		
		Controller controller=null;
		String nextPage=null;
		
		// 핸들러 맵핑
		HandlerMapping mapp=new HandlerMapping();
		controller=mapp.getController(command);
		nextPage=controller.requestHandler(request, response);
		
		if(nextPage != null) {
			if ( nextPage.indexOf("redirect:") != -1 ) {
				//   redirect:/MVC04/memberList.do
				response.sendRedirect(nextPage.split(":")[1]);
			} else {
				RequestDispatcher rd=request.getRequestDispatcher(ViewResolver.makeView(nextPage));
				rd.forward(request, response);
			}
		}
		
	}

}
