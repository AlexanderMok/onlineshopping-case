package com.onlineshopping.action;

import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.onlineshopping.bean.Cart;
import com.onlineshopping.bean.Item;
import com.onlineshopping.bean.User;
import com.onlineshopping.service.CartService;
import com.onlineshopping.service.ItemService;
import com.onlineshopping.service.ItemTypeService;
import com.opensymphony.xwork2.ActionSupport;

public class CartAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private Integer buyTotal;
	private CartService cartService;
	private ItemService itemService;
	private ItemTypeService itemTypeService;
	private Item item;
	private String itemName;
	private Integer itemId;// 从页面传
	private Integer id;
	private List<?> cartInItem;

	public Integer getBuyTotal() {
		return buyTotal;
	}

	public void setBuyTotal(Integer buyTotal) {
		this.buyTotal = buyTotal;
	}

	public Item getItem() {
		return item;
	}

	public void setItem(Item item) {
		this.item = item;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public Integer getItemId() {
		return itemId;
	}

	public void setItemId(Integer itemId) {
		this.itemId = itemId;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public List<?> getCartInItem() {
		return cartInItem;
	}

	public void setCartInItem(List<?> cartInItem) {
		this.cartInItem = cartInItem;
	}

	public void setCartService(CartService cartService) {
		this.cartService = cartService;
	}

	public void setItemService(ItemService itemService) {
		this.itemService = itemService;
	}

	public void setItemTypeService(ItemTypeService itemTypeService) {
		this.itemTypeService = itemTypeService;
	}

	public String addCart() throws Exception {
		User user = (User) ServletActionContext.getRequest().getSession()
				.getAttribute("user");
		if (user != null) {
			Cart cart = new Cart();
			cart.setUser(user);// 购物车与用户绑定
			Item item = new Item();
			System.out.println(itemId);
			item.setId(itemId);

			// Set<Item> itemList = new HashSet<Item>();
			// itemList.add(item);

			cart.setItemName(itemName);
			cart.setItem(item);
			cart.setBuyTime(new Date());
			cart.setBuyTotal(buyTotal);
			cartService.addCart(cart);
			return SUCCESS;
		}
		return ERROR;
	}

	// 按用户名显示购物车信息
	public String showCart() throws Exception {
		User user = (User) ServletActionContext.getRequest().getSession()
				.getAttribute("user");
		if (user != null) {
			cartInItem = cartService.getByUid(user.getId());
			return SUCCESS;
		}
		return ERROR;
	}

	public String delItemInCart() throws Exception {
		cartService.delByProperty(itemId);
		return SUCCESS;
	}
}