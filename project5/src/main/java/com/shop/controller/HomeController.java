package com.shop.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.domain.BoardVO;
import com.shop.domain.ProductVO;
import com.shop.service.ShopService;

import lombok.extern.log4j.Log4j;


/**
 * Handles requests for the application home page.
 */
@Controller
@Log4j
@ComponentScan(basePackages = "com.shop")
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	ShopService service;
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String home(Model model) throws Exception {
	      
		try {
            logger.info("=====Controller.freepoplist=====");
            List<BoardVO> freelist = service.freepopList();
            model.addAttribute("freelist", freelist);
            
            log.info("=====Controller.prdpoplist=====");
            List<ProductVO> list = service.prodpopList();
            model.addAttribute("list", list);
            return "home";
        } catch (Exception e) {
            // 예외가 발생한 경우, 로깅하고 오류 페이지로 이동
            logger.error("Error fetching freelist", e);
            return "error";
        }
	}
	
	
}
