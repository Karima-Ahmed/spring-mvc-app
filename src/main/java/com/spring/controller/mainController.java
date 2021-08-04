package com.spring.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.model.Student;


@Controller
@RequestMapping("/rest")
public class mainController {
	
	@RequestMapping("/")
	public String getIndex() {
		return "index";
	}

	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
//	@RequestMapping("/processLogin")
//	public String processLogin(HttpServletRequest request) {
//		String userName = request.getParameter("userName");
//		userName = userName.toUpperCase();
//		request.setAttribute("userName", userName);
//		
//		return "processLogin";
//	}

	//use requestParam
	@RequestMapping("/processLogin")
	public String processLogin(@RequestParam("userName") String user, @RequestParam("password") String password, Model model) {
		user = user.toUpperCase();
		model.addAttribute("userName", user);
		
		return "processLogin";
	}

	@RequestMapping("/student-info")
	public String studentInfo() {
		return "student-info";
	}
	
	@RequestMapping("/show-student")
	public String showstudent(@RequestParam("name") String name, @RequestParam("age") int age, Model model) {
		Student student = new Student();
		student.setName(name);
		student.setAge(age);
		model.addAttribute("student", student);
		
		return "show-student";
	}

	@RequestMapping("/student-info-with-forms")
	public String studentInfoWithForms(Model model) {
		Student student = new Student();
		model.addAttribute("student", student);
		
		return "student-info-with-forms";
	}
	
	@RequestMapping("/show-student-with-forms")
	public String showStudentWithForms(@Valid @ModelAttribute("student") Student st, BindingResult bindingResult) {
//		st.setAge(50);
		if (bindingResult.hasErrors())
			return "student-info-with-forms";
		else
			return "show-student-with-forms";
	}
}
