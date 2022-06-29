package com.example.lesson04;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.lesson04.model.NewStudent;

@RequestMapping("/lesson04")
@Controller
public class NewStudentController {
	
	// http://localhost/lesson04/add_student_view
	@RequestMapping("/add_student_view")
	public String addStudentView() {
		return "lesson04/addStudentView";    // 학생 추가 view 화면
	}
	
	// http://localhost/lesson04/add_student
	@PostMapping("/add_student")
	public String addStudent(
			@ModelAttribute NewStudent newStudent) { // 태그에서 name속성에 일치하는 필드에 값이 들어간다.
		
		// db insert
		
		// db select => 가입했던 데이터
		
		// model에 담는다.
		
		// return jsp 경로
		return "lesson04/afterStudentView";
	}
}



