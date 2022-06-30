package com.example.lesson04.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.lesson04.dao.NewStudentDAO;
import com.example.lesson04.model.NewStudent;

@Service
public class NewStudentBO {
	@Autowired
	private NewStudentDAO newStudentDAO;
	
	public void addStudent(NewStudent newStudent) {
		newStudentDAO.insertStudent(newStudent);
	}
	
	public NewStudent getStudentById(int id) {
		return newStudentDAO.selectStudentById(id);
	}
}





