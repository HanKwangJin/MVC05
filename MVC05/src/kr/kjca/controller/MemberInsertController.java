package kr.kjca.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.xml.internal.ws.api.pipe.NextAction;

import kj.kjca.model.MemberDAO;
import kj.kjca.model.MemberVO;

public class MemberInsertController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String ctp=request.getContextPath();
		
		String id=request.getParameter("id");
		String pass=request.getParameter("pass");
		String name=request.getParameter("name");
		int age=Integer.parseInt(request.getParameter("age"));
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		
//		MemberVO vo=new MemberVO(id, pass, name, age, email, phone);
		
		MemberVO vo=new MemberVO();
		vo.setId(id);
		vo.setPass(pass);
		vo.setName(name);
		vo.setAge(age);
		vo.setEmail(email);
		vo.setPhone(phone);
		
//		System.out.println(vo);
	
		MemberDAO dao=new MemberDAO();
		int cnt=dao.memberInsert(vo);
//		PrintWriter out=response.getWriter();
		String nextPage=null;
		if(cnt>0) {
//			out.println("success !!");
			nextPage="redirect:"+ctp+"/memberList.do";
		} else {
			throw new ServletException("Not Insert");
		}
		
		return nextPage;
	}

}
