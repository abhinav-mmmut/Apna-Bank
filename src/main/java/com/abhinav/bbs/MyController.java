package com.abhinav.bbs;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyController {
	@Autowired
	CustomerRepository cust_repo;
	@Autowired
	TranscationRepository trans_repo;

	@RequestMapping("/homeController")
	public String home() {
		System.out.println("home method called");
		return "home.jsp";
	}

	@RequestMapping("/viewAllCustomersController")
	public ModelAndView viewAllCustomers() {
		System.out.println("viewAllCustomers method called");
		List<Customer> list = cust_repo.findAll();
		if (list.size() == 0)
			list = new ArrayList<>();
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("viewAllCustomers.jsp");
		return mv;
	}

	@RequestMapping("/transferMoneyController")
	public String transferMoney() {
		System.out.println("transferMoney method called");
		return "transferMoney.jsp";
	}

	@RequestMapping("transactionController")
	public String transaction(String sender, String receiver, float amount) {
		System.out.println("transaction method called");
		Optional<Customer> cust1 = cust_repo.findByName(sender);
		Optional<Customer> cust2 = cust_repo.findByName(receiver);
		if (cust1.isPresent() && cust2.isPresent() && cust1.get().getAcnt_bal() >= amount) {
			cust1.get().setAcnt_bal(cust1.get().getAcnt_bal() - amount);
			cust_repo.save(cust1.get());
			cust2.get().setAcnt_bal(cust2.get().getAcnt_bal() + amount);
			cust_repo.save(cust2.get());
		} else {
			System.out.println("transaction failed, wrong credentials");
		}
		trans_repo.save(new Transaction(0, sender, receiver, amount));
		return "success.jsp";
	}

	@RequestMapping("/viewAllTransactionsController")
	public ModelAndView viewAllTransactions() {
		System.out.println("viewAllTransactions method called");
		List<Transaction> list = trans_repo.findAll();
		if (list.size() == 0)
			list = new ArrayList<>();
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("viewAllTransactions.jsp");
		return mv;
	}
}
