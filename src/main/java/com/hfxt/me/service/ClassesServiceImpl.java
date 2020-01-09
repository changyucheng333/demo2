package com.hfxt.me.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.hfxt.me.dao.ClassesDao;
import com.hfxt.me.entity.Classes;

public class ClassesServiceImpl implements ClassesService {

	
	@Autowired
	private ClassesDao classesDao;

	public void setClassesDao(ClassesDao classesDao) {
		this.classesDao = classesDao;
	}
	
	@Override
	public List<Classes> selectCname() {
		
		return classesDao.selectCname();
	}
}
