package com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.*;
import com.service.Service;


@WebServlet({"/Postout","/postpaper","/postoutput","/update1","/update2" ,"/delete11","/searchCode"})
public class PostController extends HttpServlet {
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
		
		case "/postpaper" :
			String str11 = (String)session.getAttribute("nickname");
			
			String title = request.getParameter("bbsTitle");
			System.out.println(str11);
			String text = request.getParameter("bbsContent");
			dto.setB_title(title);
			dto.setB_text(text);
			dto.setM_id(str11);
			msg = sv.insertData(dto);
			url = "Postout";
			redir = true;
			break;
		case "/Postout" : 
			List<PostDto> d1 = sv.getList1();
			request.setAttribute("pList",d1);
			url = "my_code.jsp";
			redir = false;
			break;
		case "/postoutput" :
			int code = Integer.parseInt(request.getParameter("b_num"));
			dto = sv.selecData(code);
			url = "postout.jsp";
			request.setAttribute("post", dto);
			redir = false;
			break;
		case "/update1" :  // 값가져오기
			int code1 = Integer.parseInt(request.getParameter("code"));
			dto = sv.selecData(code1);
			request.setAttribute("post", dto);
			url = "updated.jsp";
			redir = false;
			break;
		case "/update2" :
			String str = (String)request.getParameter("bbsNum");
			int num = Integer.parseInt(str);
			dto.setB_num(num);
			str = request.getParameter("bbsTitle");
			dto.setB_title(str);
			str = request.getParameter("bbsContent");
			dto.setB_text(str);
			str = request.getParameter("bbsId");
			dto.setM_id(str);
			msg = sv.update(dto);
			url = "Postout";
			redir=true;
			break;
		
		case "/delete11" :
			int code2 = Integer.parseInt(request.getParameter("code"));
			msg = sv.delete(code2);
			url = "Postout";
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
