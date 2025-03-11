package com.app.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.vo.MemberVO;

public class MemberJoinOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
//		System.out.println(req.getParameter("memberEmail"));
//		System.out.println(req.getParameter("memberPassword"));
//		System.out.println(req.getParameter("memberName"));
		
		MemberVO memberVO = new MemberVO();
		MemberDAO memberDAO = new MemberDAO();
		
		memberVO.setMemberEmail(req.getParameter("memberEmail"));
		memberVO.setMemberPassword(req.getParameter("memberPassword"));
		memberVO.setMemberName(req.getParameter("memberName"));
//		System.out.println(memberVO);
		
		memberDAO.insert(memberVO);
		
		result.setRedirect(true);
		result.setPath("login.member");
		return result;
	}

}
