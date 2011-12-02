package com.horaz.homepage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class Horaz_homepage_gaeServlet extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/html");

		String includeJsp;

		String query = req.getRequestURI();
		if (query == null || query.isEmpty() || query.equals("/")) {
			// home - intro
			includeJsp = "/about-intro.jsp";
		} else {
			includeJsp = query.replace('/', '-').replace(".html", ".jsp");
			includeJsp = "/"+includeJsp.substring(1);
		}

		if (includeJsp.indexOf('-') == -1) return;

		String includeNav = includeJsp.substring(0, includeJsp.indexOf('-'))+".jsp";
		// draw JSP
		req.setAttribute("includeJspContent", "/pages"+includeJsp);
		req.setAttribute("includeJspNavigation", "/sub-navigation"+includeNav);
		try {
			req.getRequestDispatcher("/index.jsp").include(req, resp);
		} catch (ServletException e) {
			e.printStackTrace();
		}
	}
}
