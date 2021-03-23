package com.adminportal.controller;

import com.adminportal.domain.Order;
import com.adminportal.domain.Order;
import com.adminportal.service.OrderService;
import com.adminportal.service.OrderService;
import com.adminportal.utility.MailConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;
import java.util.Locale;


@Controller
@RequestMapping("/order")
public class OrderController {
	@Autowired
	private OrderService orderService;
	@Autowired
	private JavaMailSender mailSender;
	@Autowired
	private MailConstructor mailConstructor;

	@RequestMapping("/OrderInfo")
	public String OrderInfo(@RequestParam("id") Long id,Model model) {
		Order Order = orderService.findById(id);
		model.addAttribute("Order",Order);
		return "orderInfo";
	}

	@RequestMapping(value = "/updateOrderStatus", method = RequestMethod.GET)
	public String updateOrderStatus(@RequestParam("id") Long id,Model model) {
		Order order = orderService.findById(id);
		order.setOrderStatus("Accepted");
		orderService.save(order);
		//send Mail to User
		mailSender.send(mailConstructor.constructOrderConfirmationEmail(order.getUser(), order, Locale.ENGLISH));
		List<Order> orderList = orderService.findAll();
		model.addAttribute("orderList",orderList);
		return "redirect:/order/orderList";
	}

	
	@RequestMapping("/orderList")
	public String orderList(Model model) {
		List<Order> orderList = orderService.findAll();
		model.addAttribute("orderList", orderList);
		return "orderList";
		
	}
	
	@RequestMapping(value = "/remove" ,method = RequestMethod.POST)
	public String remove(
			@ModelAttribute("id") String id,Model model
			) {

		orderService.removeOne(Long.parseLong(id.substring(8)));
		List<Order> orderList = orderService.findAll();
		model.addAttribute("orderList",orderList);
		return "redirect:/order/orderList";

	}


}
