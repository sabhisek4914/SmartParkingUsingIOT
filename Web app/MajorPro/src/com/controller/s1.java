package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class s1
 */
@WebServlet("/com.controller.s1")
public class s1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public s1() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");

		Double space_p1=0.0;
		Double space_p2=0.0;
		Double space_p3=0.0;
		Double space_p4=0.0;

		HttpSession session=request.getSession(true);
		
		int status=Integer.parseInt(request.getParameter("status"));
		if(status==1)
		{
			String age=request.getParameter("age");
			String name=request.getParameter("name");
		
			session.setAttribute("Pspace1", space_p1);
			session.setAttribute("Pspace2", space_p2);
			session.setAttribute("Pspace3", space_p3);
			session.setAttribute("Pspace4", space_p4);
			
			session.setAttribute("age", age);
			session.setAttribute("name", name);
			
			response.sendRedirect("index2.jsp");
		}

	}

}
