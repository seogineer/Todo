package kr.or.connect.todo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.connect.todo.dao.TodoDao;
import kr.or.connect.todo.dto.TodoDto;

@WebServlet("/add")
public class TodoAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TodoAddServlet() {
        super();
    }

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String todo = (String) request.getParameter("formTodo");
		String name = (String) request.getParameter("formName");
		int sequence = Integer.parseInt(request.getParameter("sequence"));
		
		TodoDto dto = new TodoDto();
		dto.setTitle(todo);
		dto.setName(name);
		dto.setSequence(sequence);
		
		TodoDao todoDao = new TodoDao();
		todoDao.addTodo(dto);
		
		response.sendRedirect("main");
	}
	
}
