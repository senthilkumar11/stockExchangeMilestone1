package com.premium.stc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.premium.stc.model.Company;
import com.premium.stc.service.*;
@Controller
public class CompanyControllerImpl implements CompanyController {
	@Autowired
	private CompanyService companyService;
	
	@RequestMapping(path="/insertcompany" )
	public String insertCompany()
	
	{
	
		return "insertCompanyPage";
		
	}
	
	
	@RequestMapping(path="/insert" )
	public String insertCompany(HttpServletRequest req)
	
	{
		   String name=req.getParameter("cname");  
	       String ceoname=req.getParameter("ceoname");
	       String sector=req.getParameter("sid");
	       String turnover=req.getParameter("turnover");
	       String brief=req.getParameter("Brief");
	       String stock=req.getParameter("scode");
	   	Company company=new Company();
	   	company.setCompanyName(name);
	   	company.setCeo(ceoname);
	   	company.setTurnOver(Double.parseDouble(turnover));
	   	company.setBriefWriteUp(brief);
	   	company.setSectorId(Integer.parseInt(sector));
	   	company.setStockCode(Integer.parseInt(stock));
		try {
			companyService.insertCompany(company);
		} catch (Exception e) {
			e.printStackTrace();
			return"unsuccess";
		}
	
	       
		return "success";
		
	}
	

	
	public Company updateCompany(Company company) throws Exception {
		return companyService.updateCompany(company);
	}

	@RequestMapping(path="/companyList")
	public ModelAndView getCompanyList() throws Exception {
		List<Company> list=companyService.getCompanyList();
		ModelAndView mv=new ModelAndView();
		mv.setViewName("listCompanyDetails");
		mv.addObject("list", list);
		return mv;
	}


	

	

}
