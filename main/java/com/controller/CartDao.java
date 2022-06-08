package com.controller;

import java.util.ArrayList;

import com.bean.CartBean;

public class CartDao {
	ArrayList<CartBean> carts = new ArrayList<CartBean>();
	public void addtToCart(CartBean cart)
	{
		carts.add(cart);
		
	}
	
}
