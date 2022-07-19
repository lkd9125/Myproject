package com.service;

import com.dto.MemberDto;
import com.dto.PostDto;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.dao.*;
public class Service {
	private HttpSession session;
	
	Dao dao = new Dao();
	Dao ss = new Dao();
	
	
	
	public String insertData(MemberDto d) {
		String msg = null;
		int result = dao.insertData(d);
		if(result == 1) {
			msg = "회원가입성공!";
			return msg;
		}
		msg = "회원가입실패. "
				+ "(아이디가 중복되거나 값을 입력하지 않으셨습니다.)";
		return msg;
	}
	
	
	public String insertData(PostDto d) {
		String msg = null;
		int result = dao.insertData(d);
		if(result > 0) {
			msg = "글을 등록했습니다!";
			return msg;
		}else {
		msg = "글 등록을 하지 못했습니다.";
		}
		return msg;
	}
	
	public String insertQ(PostDto d) {//질문
		String msg = null;
		int result = dao.insertQ(d);
		if(result > 0) {
			msg = "글을 등록했습니다!";
			return msg;
		}else {
		msg = "글 등록을 하지 못했습니다.";
		}
		return msg;
	}//질문끝
	
	public ArrayList<MemberDto> getList(){
		ArrayList<MemberDto> mList = null;
		
		mList = dao.getList();
		
		return mList;
	}
	
	public List<PostDto> getList1(){
		List<PostDto> pList = null;
		
		pList = dao.getList1();
		
		return pList;
	}
	
	public List<PostDto> getList2(){//질문
		List<PostDto> qList = null;
		
		qList = dao.getList2();
		
		return qList;
	}//질문 끝
	
	public PostDto selecData(int a) {
		PostDto dto = null;
		
		dto = dao.selectData(a);
		
		return dto;
	}
	
	public PostDto selectQ(int a) {//질문
		PostDto dto = null;
		
		dto = dao.selectQ(a);
		
		return dto;
	}//질문끝
	
	public String update(PostDto dto) {
		String msg = null;
		
		int result = dao.update(dto);
		
		if(result == 1) {
			msg = "글 수정성공!";
			return msg;
		}
		msg = "글 수정에 실패했습니다 ㅠㅠ";
		
		return msg;
	}
	
	public String updateQ(PostDto dto) {//질문
		String msg = null;
		
		int result = dao.updateQ(dto);
		
		if(result == 1) {
			msg = "글 수정성공!";
			return msg;
		}
		msg = "글 수정에 실패했습니다 ㅠㅠ";
		
		return msg;
	}//질문끝
	
	public String delete(int code) {
		String msg = null;
		
		int result = dao.delete(code);
		if(result == 1) {
			msg = "글 삭제성공!";
			return msg;
		}
		msg = "글 삭제에 실패했습니다 ㅠㅠ";
		
		return msg;
	}
	
	public String deleteQ(int code) {//질문
		String msg = null;
		
		int result = dao.deleteQ(code);
		if(result == 1) {
			msg = "글 삭제성공!";
			return msg;
		}
		msg = "글 삭제에 실패했습니다 ㅠㅠ";
		
		return msg;
	}//질문 끝


	public List<PostDto> serachCodeList(String column, String keyword) {
		List<PostDto> pList = null;
		
		pList = dao.serachCodeGetList(column,keyword);
		
		return pList;
	}


	public String updatePwd(String id, String pwd) {
		String msg = null;
		
		int result = dao.updatePwd(id,pwd);
		System.out.println("서비스아이디 : " + id);
		MemberDto mdto = dao.getMemberDto(id);
		
		System.out.println(mdto.getM_id());
		System.out.println(mdto.getM_pw());
		System.out.println(mdto.getM_nickname());
		
		if(result == 1) {
			msg = "업데이트에 성공했습니다!";
		}else {
			msg = "업데이트 실패했습니다. 관리자에게 문의해주세요";
		}
		 
		return msg;
	}
	
	
}
