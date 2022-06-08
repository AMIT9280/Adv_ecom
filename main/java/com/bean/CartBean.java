package com.bean;

public class CartBean {

		int UserId,ProductId,CartId;
		
		public CartBean() {
			
				this.CartId = (int)(Math.random()*1000000000);
		}

		public int getUserId() {
			return UserId;
		}

		public void setUserId(int userId) {
			UserId = userId;
		}

		public int getProductId() {
			return ProductId;
		}

		public void setProductId(int productId) {
			ProductId = productId;
		}

		public int getCartId() {
			return CartId;
		}

		public void setCartId(int cartId) {
			CartId = cartId;
		}
		
}
