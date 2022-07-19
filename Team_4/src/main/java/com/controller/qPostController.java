package com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.*;
import com.service.Service;


@WebServlet({"/Postout_q","/postpaper_q","/postoutput_q","/update1_q","/update2_q" ,"/delete11_q"})
public class qPostController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HttpSession session;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request,response);
	}


	private void doProc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (session == null) {
			session = request.getSession();
		}
		ArrayList<MemberDto> mList = null;
		Service sv = new Service();
		RequestDispatcher rd = null;
		String command = request.getServletPath();
		String url = null;
		String msg = null;
		String id = null;
		String pw = null;
		PostDto dto = new PostDto();
		boolean redir = false;
		
		switch(command) {
		
		case "/postpaper_q" :
			String str11 = (String)session.getAttribute("nickname");
			
			String title = request.getParameter("qsTitle");
			System.out.println(str11);
			String text = request.getParameter("qsContent");
			dto.setQ_title(title);
			dto.setQ_text(text);
			dto.setM_id(str11);
			msg = sv.insertQ(dto);
			url = "Postout_q";
			redir = true;
			break;
		case "/Postout_q" : 
			List<PostDto> d1 = sv.getList2();
			request.setAttribute("qList",d1);
			url = "wtf_code.jsp";
			redir = false;
			break;
		case "/postoutput_q" :
			int code = Integer.parseInt(request.getParameter("q_num"));
			dto = sv.selectQ(code);
			url = "q_postout.jsp";
			request.setAttribute("post", dto);
			redir = false;
			break;
		case "/update1_q" :  // 값가져오기
			int code1 = Integer.parseInt(request.getParameter("code"));
			dto = sv.selectQ(code1);
			request.setAttribute("post", dto);
			url = "q_updated.jsp";
			redir = false;
			break;
		case "/update2_q" :
			String str = (String)request.getParameter("qsNum");
			int num = Integer.parseInt(str);
			dto.setQ_num(num);
			str = request.getParameter("qsTitle");
			dto.setQ_title(str);
			str = request.getParameter("qsContent");
			dto.setQ_text(str);
			str = request.getParameter("qsId");
			dto.setM_id(str);
			msg = sv.updateQ(dto);
			url = "Postout_q";
			redir=true;
			break;
		
		case "/delete11_q" :
			int code2 = Integer.parseInt(request.getParameter("code"));
			msg = sv.deleteQ(code2);
			url = "Postout_q";
			redir=true;
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
