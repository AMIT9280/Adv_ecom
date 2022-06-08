package com.dao;

import java.util.ArrayList;

import com.bean.CartBean;

public class CartDao {
		public static ArrayList<CartBean> carts = new ArrayList<CartBean>();
		
		public void AddCart(CartBean cart) {
				carts.add(cart);
		}
}
