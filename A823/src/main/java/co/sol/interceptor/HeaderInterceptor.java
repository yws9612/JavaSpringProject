package co.sol.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import co.sol.main.UVO;


public class HeaderInterceptor implements HandlerInterceptor{

	private UVO loginBean;
	
	public HeaderInterceptor(UVO loginBean) {
		this.loginBean = loginBean;
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		request.setAttribute("loginBean",loginBean);
		return true;
	}
}
