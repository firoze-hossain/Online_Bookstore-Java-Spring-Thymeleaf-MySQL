package com.adminportal.service.impl;

import com.adminportal.domain.Book;
import com.adminportal.domain.Order;
import com.adminportal.repository.BookRepository;
import com.adminportal.repository.OrderRepository;
import com.adminportal.service.BookService;
import com.adminportal.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
@Autowired
private OrderRepository orderRepository;
	@Override
	public Order save(Order order) {
		
		return orderRepository.save(order);
	}
	@Override
	public List<Order> findAll() {
		
		return(List<Order>) orderRepository.findAll();
	}
	@Override
	public Order findById(Long id) {
		
		return orderRepository.findById(id).orElse(null);
	}
	@Override
	public void removeOne(Long id) {
		orderRepository.deleteById(id);
		
	}

}
