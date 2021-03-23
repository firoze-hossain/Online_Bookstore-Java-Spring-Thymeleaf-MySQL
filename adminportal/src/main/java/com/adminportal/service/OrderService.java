package com.adminportal.service;

import com.adminportal.domain.Book;
import com.adminportal.domain.Order;

import java.util.List;

public interface OrderService {
	Order save(Order book);
	List<Order> findAll();
	Order findById(Long id);
	void removeOne(Long id);

}
