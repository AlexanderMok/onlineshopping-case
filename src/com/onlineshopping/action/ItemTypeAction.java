package com.onlineshopping.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.onlineshopping.bean.ItemType;
import com.onlineshopping.service.ItemTypeService;

public class ItemTypeAction extends AdminAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ItemTypeService itemTypeService;
	private Integer tid;
	public Integer getTid() {
		return tid;
	}
	public void setTid(Integer tid) {
		this.tid = tid;
	}
	public void setItemTypeService(ItemTypeService itemTypeService) {
		this.itemTypeService = itemTypeService;
	}
	
	@Override
	public String execute() {
		System.out.println("here"+tid);
		String str="";
		String json;
		List<?> list = itemTypeService.getTypeByPid(tid);
	
		try {
			HttpServletResponse response = ServletActionContext.getResponse();
			response.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
			int size = list.size();
			System.out.println(size);
			for(int i=0;i<size;i++){
				ItemType itemType = (ItemType) list.get(i);
				str += "{'id':'"+itemType.getId()+"','typeName':'"+itemType.getTypeName()+"'},";
			}
			
			str=str.substring(0, str.length()-1);
			json="{options:["+str+"]}";
			//json = "{options:[{'id':'1','typename':'dianzi'},{'id':'2','typename':'shenghuo'}]}";
			System.out.println(json);
			out.print(json);
		} catch (IOException e) {
		
			e.printStackTrace();
		}
//		for(Object o:list){
//			GType gt = (GType) o;
//			dataMap.put("id",gt.getId());
//			dataMap.put("typename", gt.getTypename());
//		}
		return null;
	}
}
