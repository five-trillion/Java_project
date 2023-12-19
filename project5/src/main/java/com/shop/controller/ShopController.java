package com.shop.controller;

import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.shop.domain.BoardReplyVO;
import com.shop.domain.BoardVO;
import com.shop.domain.CartVO;
import com.shop.domain.CodeVO;
import com.shop.domain.DeliveryVO;
import com.shop.domain.OrderDetailVO;
import com.shop.domain.OrderInfoVO;
import com.shop.domain.OrderVO;
import com.shop.domain.ProductVO;
import com.shop.domain.ReviewVO;
import com.shop.domain.UsersVO;
import com.shop.service.AdminService;
import com.shop.service.ShopService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
public class ShopController {
	private static final Logger logger = LoggerFactory.getLogger(ShopController.class);
	
	@Autowired
	ShopService service;
	AdminService adminService;
	
	@RequestMapping(value="shop", method = RequestMethod.GET)
	public String list(Model model) throws Exception {
		try {
//			logger.info("=======controller.prodlist========");
			List<ProductVO> prodlist = service.prodList();
			model.addAttribute("prodlist", prodlist);
			return "shop/list";
		} catch(Exception e) {
			logger.error("Error fetching prodlist", e);
            return "error";
		}
	}
	@RequestMapping(value="shop/brand", method = RequestMethod.GET)
	public String brandlist(@RequestParam("b") String brand, Model model) throws Exception {
		try {
			List<ProductVO> prodlist = service.prodbrandList(brand);
			model.addAttribute("prodlist", prodlist);
			return "shop/list";
		} catch(Exception e) {
			logger.error("Error fetching prodlist", e);
			return "error";
		}
	}
	@RequestMapping(value="shop/category", method = RequestMethod.GET)
	public String catlist(@RequestParam("c") String category, Model model) throws Exception {
		try {
			List<ProductVO> prodlist = service.prodcatList(category);
			model.addAttribute("prodlist", prodlist);
			return "shop/list";
		} catch(Exception e) {
			logger.error("Error fetching prodlist", e);
			return "error";
		}
	}
	@RequestMapping(value="/search", method = RequestMethod.GET)
	public String search(@RequestParam String keyword, Model model) throws Exception {
		List<ProductVO> slist = service.search(keyword);
		model.addAttribute("prodlist", slist);
		return "shop/list";
	}
	@RequestMapping(value = "shop/detail", method = RequestMethod.GET)
	public String detail(@RequestParam("prodNo") String prodNo, Model model) throws Exception {
		
        service.updateProdCnt(prodNo); // 조회 수 업데이트
        
        ProductVO proddetail = service.prodDetail(prodNo); // 상세 정보 조회
        model.addAttribute("prd", proddetail);
        
        List<ReviewVO> revidlist = service.reviewdList(prodNo); // 해당상품 리뷰목록구현
        model.addAttribute("rlist", revidlist);
        
		return "shop/detail";
	}
	@RequestMapping(value="/cart/add", method = RequestMethod.POST)
	@ResponseBody
	public String addcart(@RequestBody CartVO cartVO, HttpSession session) throws Exception {
	    
	    UsersVO usersVO = (UsersVO) session.getAttribute("user");
	    if (usersVO == null) {
	        return "5";
	    }
	    cartVO.setUserNo(usersVO.getUserNo());
		int result = service.addCart(cartVO); 
	    return result + "";
	}
	@RequestMapping(value="/cart/{userNo}", method = RequestMethod.GET)
	public String getcart(HttpServletRequest request, HttpSession session, Model model) throws Exception {
	    try {
	        UsersVO uVo = (UsersVO) session.getAttribute("user");
	        // 세션에 "uVO" 속성이 없거나 값이 null인 경우 처리
	        if (uVo == null) {
	            log.error("User information not found in session");
	            return "redirect:/shop/login"; 
	        }
	        long userNo = uVo.getUserNo();
	        List<CartVO> clist = service.getCart(userNo);
	        model.addAttribute("cart", clist);
	        return "shop/cart";
	    } catch (Exception e) {
	        log.error("Error fetching getcart", e);
	        return "error";
	    }
	}
	@RequestMapping(value="cart/update", method = RequestMethod.POST)
	public String updatecart(CartVO cartVO) throws Exception {
		service.updateCart(cartVO);
		return "redirect:/cart/"+ cartVO.getUserNo();
	}
	@RequestMapping(value="cart/delete",method = RequestMethod.POST)
	public String deletecart(CartVO cartVO) throws Exception {
		service.deleteCart(cartVO.getCartNo());
		return "redirect:/cart/"+ cartVO.getUserNo();
	}
	@RequestMapping(value = "checkout", method = RequestMethod.GET)
	public String checkout(HttpSession session, Model model) throws Exception {
	    try {
	        UsersVO uVo = (UsersVO) session.getAttribute("user");
	        if (uVo == null) {
	            return "redirect:/shop/login";
	        }
	        long userNo = uVo.getUserNo();
	        List<CartVO> cartVO = service.getCart(userNo);
	        model.addAttribute("order", cartVO);

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
        return "shop/checkout";
	}
	@RequestMapping(value = "/complete", method = RequestMethod.POST)
	public String order(@RequestParam("prodSum") int prodSum, HttpServletRequest request, HttpSession session, OrderInfoVO order, OrderDetailVO orderdtVO, DeliveryVO deli) throws Exception {
		 UsersVO uVo = (UsersVO)session.getAttribute("user");  
		 if (uVo == null) {
			 System.out.println("user정보가 없습니다");
			 return "redirect:/shop/login";
		 }
		 long userNo = uVo.getUserNo();
		 
		 Calendar cal = Calendar.getInstance();
		 int year = cal.get(Calendar.YEAR);
		 String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
		 String ymd = ym +  new DecimalFormat("00").format(cal.get(Calendar.DATE));
		 String subNum = "";
		 for(int i = 1; i <= 6; i ++) {
		  subNum += (int)(Math.random() * 10);
		 }
		 
		 String orderNo = ymd + "_" + subNum;
		 System.out.println("주문번호 : " + orderNo);
		 
		 order.setOrderNo(orderNo);
		 order.setUserNo(userNo);
		 service.orderInfo(order);
		 System.out.println(order);
		 
		 orderdtVO.setOrderNo(orderNo);
		 orderdtVO.setProdSum(prodSum);
		 service.orderDetail(orderdtVO);
		 System.out.println(orderdtVO);
		 
		 deli.setOrderNo(orderNo);
		 service.deliInfo(deli);
		 System.out.println(deli);
		 
		 HttpSession ordersession = request.getSession();
	     ordersession.setAttribute("odr", order);
		 
		 CartVO cartVO = new CartVO();
		 cartVO.setUserNo(uVo.getUserNo());
		 service.removeCart(cartVO);
		 
		 return "redirect:/complete";  
	}
	@RequestMapping(value="/complete", method = RequestMethod.GET)
	public String complete(HttpSession session, HttpSession ordersession, Model model) throws Exception {
		try {
	        UsersVO uVo = (UsersVO) session.getAttribute("user");
	        if (uVo == null) {
	            return "redirect:/shop/login";
	        }
	        
	        OrderInfoVO orderVO = (OrderInfoVO) ordersession.getAttribute("odr");
	        String orderNo = orderVO.getOrderNo();
	        System.out.println("주문완료: " + orderNo);
	        
			List<OrderVO> order = service.getCom(orderNo);
			model.addAttribute("order", order);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "mypage/complete";
	}
	@RequestMapping(value="mypage", method = RequestMethod.GET)
	public String mypage() {
		return "mypage/mypage";
	}
	@RequestMapping(value="mypage/order", method = RequestMethod.GET)
	public String mypage_order(HttpSession session, Model model) throws Exception {
		try {
	        UsersVO uVo = (UsersVO) session.getAttribute("user");
	        if (uVo == null) {
	            return "redirect:/shop/login";
	        }
	        long userNo = uVo.getUserNo();
			List<OrderVO> order = service.getorder(userNo);
			model.addAttribute("order", order);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "mypage/order";
	}
	@RequestMapping(value="mypage/order_detail", method = RequestMethod.GET)
	public String mypage_od(@RequestParam("orderNo") String orderNo, OrderVO orderVO, HttpSession session, Model model) throws Exception {
		try {
	        UsersVO uVo = (UsersVO) session.getAttribute("user");
	        if (uVo == null) {
	            return "redirect:/shop/login";
	        }
	        
	        System.out.println(orderVO);
	        
			List<OrderVO> order = service.getordetail(orderNo);
			model.addAttribute("order", order);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "mypage/order_detail";
	}
	@RequestMapping(value="order/delete",method = RequestMethod.POST)
	public String deleteorder(OrderVO orderVO) throws Exception {
		service.deleteOrder(orderVO.getOrderNo());
		return "redirect:/mypage/order";
	}
	@RequestMapping(value="mypage/content", method = RequestMethod.GET)
	public String mypage_content(HttpSession session, Model model) {
		try {
	        UsersVO uVo = (UsersVO) session.getAttribute("user");
	        if (uVo == null) {
	            return "redirect:/shop/login";
	        }
	        long userNo = uVo.getUserNo();
	        
	        List<OrderVO> rvreg = service.getProd(userNo);
	        model.addAttribute("rvreg", rvreg);
	        
	        List<ReviewVO> revi = service.getRevi(userNo);
	        model.addAttribute("revi", revi);
	        
	        List<BoardVO> loun = service.getLounge(userNo);
	        model.addAttribute("loun", loun);
	        
	        List<BoardReplyVO> repl = service.getReply(userNo);
	        model.addAttribute("repl", repl);
	        
	        List<BoardVO> qna = service.getQna(userNo);
	        model.addAttribute("qna", qna);
	        
		} catch (Exception e) {
				e.printStackTrace();
		}
		return "mypage/content";
	}
	@RequestMapping(value="mypage/point", method = RequestMethod.GET)
	public void mypage_point() {
		
	}
	
}
