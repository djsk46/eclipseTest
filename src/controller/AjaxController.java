package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Forward;
import service.MemberMM;

/**
 * Servlet implementation class AjaxController
 */
@WebServlet("/idcheck")
public class AjaxController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	
protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cmd=request.getServletPath();
		System.out.println("cmd="+cmd);
		String json=null;
		MemberMM mm=new MemberMM(request,response);
		
		switch (cmd) {
		case "/idcheck" :
			System.out.println("들어오십니까");
			json=mm.idcheck();		
			break;
		}
		
		
		if(json!=null) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			out.write(json);
		}
	
	}
	




	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request,response);
	}

}
