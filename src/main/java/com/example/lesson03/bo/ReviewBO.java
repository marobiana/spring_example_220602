package com.example.lesson03.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.lesson03.dao.ReviewDAO;
import com.example.lesson03.model.Review;

@Service
public class ReviewBO {

	@Autowired
	private ReviewDAO reviewDAO;
	
	// input, output
	public Review getReview(int id) {
		return reviewDAO.selectReview(id);
	}
	
	public int addReview(Review review) {
		return reviewDAO.insertReview(review);
	}
	
	public int addReviewAsField(
			String storeName, String menu, String userName, 
			double point, String review) {
		
		return reviewDAO.insertReviewAsField(storeName, menu, userName, point, review);
	}
	
	public int updateReviewById(int id, String review) {
		return reviewDAO.updateReviewById(id, review);
	}
}









