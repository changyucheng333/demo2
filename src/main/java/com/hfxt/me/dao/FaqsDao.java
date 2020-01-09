package com.hfxt.me.dao;

import java.util.List;

import com.hfxt.me.entity.Faqs;

public interface FaqsDao {
	List<Faqs> selectAll(String title);
	
	Integer insert(Faqs faqs);
	
}
