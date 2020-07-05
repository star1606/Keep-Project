package reminder;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.keep.action.Action;
import com.cos.keep.model.Person;
import com.cos.keep.model.Reminder;
import com.cos.keep.repository.ReminderRepository;


public class ReminderMainAction implements Action{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
	
		
		
		  HttpSession session  = request.getSession();
		  Person person = (Person)session.getAttribute("principal");
		  int personId = person.getId();
		  System.out.println("이메일 받아오나?"+request.getParameter("email"));
		  System.out.println("네임 받아오나?"+request.getParameter("personName"));
		  
		  
		  ReminderRepository reminderRepository =
				  ReminderRepository.getInstance();
		  
		  List<Reminder> reminders = reminderRepository.findAll(personId);
		  System.out.println(reminders);
		  request.setAttribute("reminders", reminders);
		  
		  RequestDispatcher dis =
				  request.getRequestDispatcher("memo/todolist2.jsp");
		  
		  dis.forward(request, response);
	}
		
}

	
	
	

