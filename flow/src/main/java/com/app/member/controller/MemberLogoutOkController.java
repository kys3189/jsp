package com.app.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.vo.MemberVO;

public class MemberLogoutOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		HttpSession session = req.getSession();
		
//		일케 안씀... 인벨리데이트로 지워야 세션을 '모두'비움
//		session.removeAttribute("memberEmail");
		session.invalidate();
		
		result.setRedirect(true);
		result.setPath("login.member");
		return result;
	}

}
