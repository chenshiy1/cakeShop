package com.chenlaoda.cake.cake.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.chenlaoda.cake.cake.dao.CakeDaoImpl;
import com.chenlaoda.cake.entity.Cake;
import com.chenlaoda.cake.entity.CakeIndex;
import com.chenlaoda.cake.entity.CakeSingle;
import com.chenlaoda.cake.entity.Size;
import com.chenlaoda.cake.entity.Type;

@Service
public class CakeServiceImpl implements CakeService{

	private List<Cake> list = null;

	@Resource
	private CakeDaoImpl cakeDaoImpl;
	
	
	
	public List<Cake> loadAllCake(){
		list = cakeDaoImpl.getAllCake();
		int count = list.size();
		
		return list;
	}
	
	
	public List<CakeIndex> packToCakeIndex(List<Cake> list1){
		List<CakeIndex> list = new ArrayList<CakeIndex>();
		for(int i = 0; i < list1.size(); i++) {
			CakeIndex cakeIndex = new CakeIndex();
			cakeIndex.setCakeId(list1.get(i).getCakeId());
			cakeIndex.setCakeName(list1.get(i).getCakeName());
			cakeIndex.setDiscount(list1.get(i).getDiscount());
			cakeIndex.setImg(list1.get(i).getImg());
			Set<Size> set = list1.get(i).getSet2();
    		Iterator<Size> it = set.iterator();
    		while(it.hasNext()) {
    			cakeIndex.setPrice(it.next().getPrice());
    			break;
    		}
    		list.add(cakeIndex);
		}
		return list;
	}
	

	
	public void loadSingleCake(String cakeId,HttpSession session) {
		
		Cake cake = findById(cakeId);
		Set<Size> set = cake.getSet2();
		Iterator<Size> it = set.iterator();
		List<Size> size = new ArrayList<Size>();
		
		while(it.hasNext()) {
			Size s = null;
			s = it.next();
			size.add(s);
		}
		Set<Type> set2 = cake.getSet1();
		
		List<Type> type = new ArrayList<Type>();
		Iterator<Type> itt = set2.iterator();
		while(itt.hasNext()) {
			type.add(itt.next());
		}
		session.setAttribute("cakeSingle", cake);
		session.setAttribute("size", size);
		session.setAttribute("type", type);
		return;
	}
	
	
	public Cake findById(String cakeId) {
		Cake cake = cakeDaoImpl.findById(Integer.parseInt(cakeId));
		return cake;
	}
	
	
	public List<CakeIndex> searchCake(String str) {
		String[] res = str.split(",");
		if(res[0].equals("cakeName")) {
			System.out.println("进入service cakeName 开始查找");
			System.out.println(res[1]);
			return packToCakeIndex(cakeDaoImpl.findByCakeName(res[1]));
		}else if(res[0].equals("color")) {
			return packToCakeIndex(cakeDaoImpl.findByColor(res[1]));
		}else if(res[0].equals("taste")) {
			return packToCakeIndex(cakeDaoImpl.findByTaste(res[1]));
		}else if(res[0].equals("size")) {
			return packToCakeIndex(cakeDaoImpl.findBySize(res[1]));
		}else if(res[0].equals("type")) {
			return packToCakeIndex(cakeDaoImpl.findByType(res[1]));
		}else if(res[0] != null){
			return packToCakeIndex(cakeDaoImpl.getAllCake());
		}else {
			return null;
		}
	}
	
	
	public List<Cake> checkCake(){
		
		return cakeDaoImpl.getAllCake();
		
	}
	
	public List<Size> checkSize(){
		return cakeDaoImpl.getAllSize();
	}
	
	public List<Type> checkType(){
		return cakeDaoImpl.getAllType();
	}
	
	
	
	public void deleteOne(String cakeId) {
		cakeDaoImpl.deleteOne(Integer.parseInt(cakeId));
	}
	
	public void addOne(String cakeName, String color, String taste, String discount,
			String discription,String img,String img1,String img2,String img3,String size1,String price,String type1) {
		Cake cake = new Cake();
		
		cake.setCakeName(cakeName);
		cake.setColor(color);
		cake.setDate(new Date());
		cake.setDiscount(Double.parseDouble(discount));
		cake.setTaste(taste);
		cake.setDiscription(discription);
		cake.setImg(img);
		cake.setImg1(img1);
		cake.setImg2(img2);
		cake.setImg3(img3);
		System.out.println("service " + cake.getTaste());
		String[] arr1 = size1.split(",");
		String[] arr2 = price.split(",");
		String[] arr3 = type1.split(",");
		Size[] size = new Size[arr1.length];
		for(int i = 0; i < arr1.length;i++) {
			size[i] = new Size();
			size[i].setSize(Integer.parseInt(arr1[i]));
			size[i].setPrice(Double.parseDouble(arr1[i]));
		}
		Type[] type = new Type[arr3.length];
		for(int i = 0; i < arr3.length; i++) {
			type[i] = new Type();
			type[i].setType(arr3[i]);
		}
		cakeDaoImpl.addOne(cake, size, type);
	}
	
}
