package admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.dao.face.AdminMemberListDao;
import admin.dao.impl.AdminMemberListDaoImpl;
import admin.service.face.AdminMemberListService;
import admin.service.impl.AdminMemberListServiceImpl;
import user.member.dao.face.MemberDao;
import user.member.dao.impl.MemberDaoImpl;

@WebServlet("/admin/claimDelete")
public class dogClaimDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private AdminMemberListService adminMemberListService = new AdminMemberListServiceImpl();
	private MemberDao memberDao = new MemberDaoImpl();
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String[]arr=req.getParameterValues("member_chk[]"); 	
		//Strint e = 아이디
		for(String e: arr) {
			//하나씩 입양신청 처리(불허가)		
			String userid = e.trim().substring(0, e.length());	
			//dogno 출력
			int dogno = memberDao.SelectDognoBydogclaim(userid);
			
			// 삭제
			adminMemberListService.dogClaimDelete(userid);	
			//applysw=2로 변환
			memberDao.UpdateApplySw(userid,dogno);
		}		
	
	
	}

}
