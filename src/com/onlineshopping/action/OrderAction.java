package com.onlineshopping.action;

import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;

import org.apache.struts2.ServletActionContext;

import com.onlineshopping.bean.Item;
import com.onlineshopping.bean.Order;
import com.onlineshopping.bean.User;
import com.onlineshopping.service.ItemService;
import com.onlineshopping.service.OrderService;
import com.onlineshopping.util.Tools;


public class OrderAction extends AdminAction{
	private static final long serialVersionUID = 1L;
	private Integer itemId;
	private Integer id;//order Id
	private OrderService orderService;
	private ItemService itemService;
	private Order order;
	private List<?> orderList;
	private String orderNum;
	private Integer total;
	private User user;
	private Item item;
	// 分页
	private Integer curPage = 1;
	private Integer totalPage = 0;
	private Integer pageRecord = 0;
	
	
	public Item getItem() {
		return item;
	}

	public void setItem(Item item) {
		this.item = item;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
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

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public List<?> getOrderList() {
		return orderList;
	}

	public void setOrderList(List<?> orderList) {
		this.orderList = orderList;
	}

	public String getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public Integer getCurPage() {
		return curPage;
	}

	public void setCurPage(Integer curPage) {
		this.curPage = curPage;
	}

	public Integer getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}

	public Integer getPageRecord() {
		return pageRecord;
	}

	public void setPageRecord(Integer pageRecord) {
		this.pageRecord = pageRecord;
	}

	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}

	public void setItemService(ItemService itemService) {
		this.itemService = itemService;
	}

	/**
	 * 处理用户提交订单
	 * @return
	 * @throws Exception
	 */
	public String addOrder() throws Exception {
		User user = (User) ServletActionContext.getRequest().getSession().getAttribute("user");
		
		
		Order order = new Order();
		order.setUser(user);
		order.setBuyTime(new Date());
		//Set<Item> items = new HashSet<Item>();
		Item item = new Item();		
		item.setId(itemId);
		//Item item = itemService.getById(itemId);
		order.setItem(item);
		Random random = new Random();
		String orderNum = "C" + random.nextInt(100) + Tools.dateToString(new Date());
		order.setOrderNum(orderNum);
		order.setTotal(total);//页面获取
		order.setStatus("0");
		
		
		orderService.save(order);
		
		
		return SUCCESS;
	}
	public String showOrder() throws Exception {
		User user = (User) ServletActionContext.getRequest().getSession().getAttribute("user");
		if(user!=null){
			orderList = orderService.findByUid(user.getId());
			return SUCCESS;
		}
		return ERROR;
	}
	public String showUserOrder() throws Exception {
		User user = (User) ServletActionContext.getRequest().getSession().getAttribute("user");
		if(user!=null){
			orderList = orderService.findByUid(user.getId());
			return SUCCESS;
		}
		return ERROR;
	}
	
	
	
	public String orderList() throws Exception {
		// itemList = itemService.getAllItem();
		if (totalPage == 0) {
			totalPage = orderService.getTotalPage(10);
		}
		if (totalPage == 0) {
			pageRecord = orderService.getAll().size();
		}
		if (curPage < 0) {
			curPage = 1;
		}
		orderList = orderService.getPage(curPage);
		
		return SUCCESS;
	}
	//发货得到对象，传到页面
	public String send() throws Exception{
		order=orderService.findById(id);
		return SUCCESS;
	}
	//发货操作
	public String deliver() throws Exception {
		order=orderService.findById(id);
		order.setStatus("1");
		orderService.update(order);
		return SUCCESS;
	}
	
}
