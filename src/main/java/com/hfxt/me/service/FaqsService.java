package com.hfxt.me.service;

import java.util.List;

import com.hfxt.me.entity.Faqs;

public interface FaqsService {
	List<Faqs> selectAll(String title);
	
	Integer insert(Faqs faqs);
}
