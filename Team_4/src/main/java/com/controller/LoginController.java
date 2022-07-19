package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.print.attribute.HashPrintRequestAttributeSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.MemberDto;
import com.service.Service;

@WebServlet({ "/login", "/newmember", "/idcheck", "/nickcheck" , "/updatePwd" , "/change","/logout"})
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HttpSession session;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doproc(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doproc(request, response);
	}

	private void doproc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (session == null) {
			session = request.getSession();
		}
		ArrayList<MemberDto> mList = null;
		RequestDispatcher rd = null;
		Service sv = new Service();
		String command = request.getServletPath();
		String url = null;
		String msg = null;
		String id = null;
		String pw = null;
		boolean redir = false;
		switch (command) {
		case "/login":
			id = request.getParameter("m_id");
			pw = request.getParameter("m_pw");
			System.out.println(id);
			mList = sv.getList();
			for (int i = 0; i < mList.size(); i++) {
				if (id.equals(mList.get(i).getM_id())) {
					if(pw.equals(mList.get(i).getM_pw())) {
						msg = "로그인 성공!";
						url = "home2.jsp";
						String nickname = mList.get(i).getM_nickname();
						String idd = mList.get(i).getM_id();
						String pww = mList.get(i).getM_pw();
						session.setAttribute("id", idd);
						session.setAttribute("nickname", nickname);
						session.setAttribute("pw", pww);
//						System.out.println("확인 작업 : " + nickname + idd + pww);
						break;
					}
					else {
						msg = "입력하신 정보가 맞지 않습니다!";
						url = "home2.jsp";
						break;
					}
				} else {
					msg = "입력하신 정보가 맞지 않습니다!";
					url = "home2.jsp";
				}
			}
			redir = true;
			break;
		case "/newmember":
			MemberDto dto = null;
			dto = (MemberDto) request.getAttribute("Dto");
			msg = sv.insertData(dto);
			url = "home2.jsp";
			redir = true;
			break;
		case "/idcheck":
			id = request.getParameter("m_id");
			mList = sv.getList();

			for (int i = 0; i < mList.size(); i++) {
				if (id.equals(mList.get(i).getM_id())) {
					msg = "중복되는 아이디입니다!";
					url = "idck.jsp";
					redir = true;
					break;
				}
				msg = "사용가능한 아이디입니다!";

			}
			url = "idck.jsp";
			redir = true;
			break;
		case "/nickcheck":
			id = request.getParameter("m_nickname");
//			System.out.println(id);
			mList = sv.getList();
			System.out.println(mList.get(0).getM_id());
			for (int i = 0; i < mList.size(); i++) {
				if (id.equals(mList.get(i).getM_nickname())) {
					msg = "중복되는 닉네임입니다!";
					url = "nickck.jsp";
//					System.out.println(msg);
					redir = true;
					break;
				}
				msg = "사용가능한 닉네임입니다!";
//					System.out.println(msg);

			}
			url = "nickck.jsp";
			redir = true;
			System.out.println(msg);

			break;
		
		case "/updatePwd" :
			String pwd = (String)request.getParameter("m_pw");
			id = (String)session.getAttribute("id");
			msg = sv.updatePwd(id,pwd);
			
			url = "home2.jsp";
			
			redir = true;
			break;
			
		case "/logout" :
			session.invalidate();
			response.sendRedirect("home2.jsp");
			break;
		
		}


		if (redir) {
			session.setAttribute("msg", msg);
			response.sendRedirect(url);
		} else {
			rd = request.getRequestDispatcher(url);
			rd.forward(request, response);
		}
	}

}
