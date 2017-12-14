package com.chenlaoda.cake.listener;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.chenlaoda.cake.cake.service.CakeServiceImpl;
import com.chenlaoda.cake.entity.Cake;
import com.chenlaoda.cake.entity.CakeIndex;
import com.chenlaoda.cake.entity.Size;

/**
 * Application Lifecycle Listener implementation class SessionListener
 *
 */
@WebListener
public class SessionListener implements HttpSessionListener {

    /**
     * Default constructor. 
     */
	
	
	@Autowired
	private CakeServiceImpl cakeServiceImpl;
    public SessionListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
     */
    public void sessionCreated(HttpSessionEvent arg0)  { 
         // TODO Auto-generated method stub
    	
    	cakeServiceImpl = WebApplicationContextUtils.getWebApplicationContext(arg0.getSession().getServletContext()).getBean(CakeServiceImpl.class);
    	List<Cake> list1 = cakeServiceImpl.loadAllCake();
    	int count = list1.size();
    	List<CakeIndex> list2 = new ArrayList<CakeIndex>();
    	
    	for(int i = 0; i < list1.size(); i++) {
    		CakeIndex cakeIndex = new CakeIndex();
    		cakeIndex.setCakeId(list1.get(i).getCakeId());
    		cakeIndex.setCakeName(list1.get(i).getCakeName());
    		cakeIndex.setDiscount(list1.get(i).getDiscount());
    		cakeIndex.setImg(list1.get(i).getImg());
    		Set<Size> set = list1.get(i).getSet2();
    		Iterator<Size> it = set.iterator();
    		while(it.hasNext()) {
    			Size size = it.next();
    			cakeIndex.setPrice(size.getPrice());
    			break;
    		}
    		list2.add(cakeIndex);
    	}
    	arg0.getSession().setAttribute("allCakeList",list2);
    	arg0.getSession().setAttribute("partCakeList",list2);
    	arg0.getSession().setAttribute("count",count);
    	arg0.getSession().setAttribute("pageIndex",1);
    	arg0.getSession().setAttribute("perPageCount", 6);
    	arg0.getSession().setAttribute("partCount", count);
    	
    	
    	
    }

	/**
     * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
     */
    public void sessionDestroyed(HttpSessionEvent arg0)  { 
         // TODO Auto-generated method stub
    }
	
}
