package kr.kjca.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kj.kjca.model.MemberDAO;
import kj.kjca.model.MemberVO;

public class MemberListController implements Controller{
	
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MemberDAO dao=new MemberDAO();
		List<MemberVO> list=dao.memberList();
		request.setAttribute("list", list);
		
		return "memberList";
//		return "/WEB-INF/member/memberList.jsp";
	}
	
	
}
