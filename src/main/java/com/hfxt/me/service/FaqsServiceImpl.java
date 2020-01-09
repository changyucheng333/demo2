package com.hfxt.me.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.hfxt.me.dao.ClassesDao;
import com.hfxt.me.dao.FaqsDao;
import com.hfxt.me.entity.Classes;
import com.hfxt.me.entity.Faqs;

public class FaqsServiceImpl implements FaqsService {

	@Autowired
	private FaqsDao faqsDao;
	
	public void setFaqsDao(FaqsDao faqsDao) {
		this.faqsDao = faqsDao;
	}

	@Override
	public List<Faqs> selectAll(String title) {
		
		return faqsDao.selectAll(title);
	}

	@Override
	public Integer insert(Faqs faqs) {
		
		return faqsDao.insert(faqs);
	}
}
