package co.sol.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import co.sol.main.UVO;

@Component
public class LoginInterceptor implements HandlerInterceptor{
	
	private UVO loginBean;
	
	public LoginInterceptor(UVO loginBean) {
		// TODO Auto-generated constructor stub
		this.loginBean = loginBean;
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		if(loginBean.isUserLogin() == false) {
			String contextPath = request.getContextPath();
			response.sendRedirect(contextPath + "/user/not_login");
			return false;
		}
		return true;
	}
}








