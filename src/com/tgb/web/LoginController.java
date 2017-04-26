package com.tgb.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tgb.entity.OrderCard;
import com.tgb.entity.User;
import com.tgb.manager.OrdersManager;
import com.tgb.manager.UserManager;

@Controller
@RequestMapping("/login")
public class LoginController {
    
	@Resource(name="userManager")
	private UserManager userManager;
	
	@Resource(name="ordersManager")
	private OrdersManager ordersManager;
	
	@RequestMapping("/elseLog.do")
	public String elseLog(HttpServletRequest request){
	return("/login");
	}
	
	@RequestMapping("/home.do")
	public ModelAndView homeLog(HttpServletRequest request){
	HttpSession session = request.getSession();
	int userId=(Integer)session.getAttribute("userId");
	List<OrderCard> orList=ordersManager.getOrders(userId);
	Map<String, Object> orMap = new HashMap<String, Object>();
	orMap.put("orList", orList);
	return new ModelAndView("/home", orMap);
	}
	
	@ResponseBody
	@RequestMapping(value="/login.do",produces="text/json; charset=UTF-8")
	public String login(HttpServletRequest request){
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		User user = userManager.getUser(userName);
		if(user!=null){
			Boolean boolean1 = password.equals(user.getPassword());
			if (boolean1) {
				HttpSession httpSession = request.getSession();
				httpSession.setAttribute("userId", user.getId());
				return "{\"status\":\"success\"}";
			}
			return "{\"status\":\"fail\"}";
		}
		else{
			return "{\"status\":\"fail\"}";
		}
	}
	
	@ResponseBody
	@RequestMapping(value="/createUser.do",produces="text/json; charset=UTF-8")
	public String createUser(HttpServletRequest request){
		String userName = request.getParameter("userName");
		if(userManager.getCount(userName)!=0){
			return "{\"status\":\"exited\"}";
		}
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String companyName = request.getParameter("companyName");
		User user = new User(userName, password, email, companyName);
		userManager.addUser(user);
			if(userManager.getCount(userName)==1){
				return "{\"status\":\"success\"}";
			}
			else {
				return "{\"status\":\"fail\"}";
			}
		
		
		
	}
}
