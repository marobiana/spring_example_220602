package com.example.lesson02.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.lesson02.dao.UsedGoodsDAO;
import com.example.lesson02.model.UsedGoods;

@Service
public class UsedGoodsBO {
	
	@Autowired
	private UsedGoodsDAO usedGoodsDAO;  // DI: Dependency Injection
	
	public List<UsedGoods> getUsedGoodsList() {
		List<UsedGoods> usedGoodsList = usedGoodsDAO.selectUsedGoodsList();
		return usedGoodsList;
	}
}
