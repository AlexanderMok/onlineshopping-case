package com.onlineshopping.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class FileUploadAction extends AdminAction {
	
	private static final long serialVersionUID = 1L;
	private File file;
	private String fileName;
	private String fileContextType;
	private String msg = "上载成功";
	public File getFile() {
		return file;
	}
	public void setFile(File file) {
		this.file = file;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFileContextType() {
		return fileContextType;
	}
	public void setFileContextType(String fileContextType) {
		this.fileContextType = fileContextType;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	@Override
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		PrintWriter writer = ServletActionContext.getResponse().getWriter();
		String path = request.getServletContext().getRealPath("/upload/itemPic");
		try {
			File f = this.getFile();
			if (this.getFileName().endsWith(".exe")) {
				msg = "对不起,你上载的文件格式不允许!!!";
				return ERROR;
			}
			FileInputStream inputStream = new FileInputStream(f);
			FileOutputStream outputStream = new FileOutputStream(path + "/"
					+ this.getFileName());
			byte[] buf = new byte[1024];
			int length = 0;
			while ((length = inputStream.read(buf)) != -1) {
				outputStream.write(buf, 0, length);
			}
			inputStream.close();
			outputStream.flush();
			outputStream.close();
			//String picUrl = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/upload/itemPic/"+this.getFileName();
			String picUrl = "upload/itemPic/"+this.getFileName();
			String json = "{picUrl:\"" + picUrl + "\"}";
			System.out.println(json);
			writer.print(json);
			
		} catch (Exception e) {
			e.printStackTrace();
			//message = "对不起,文件上传失败了!!!!";
			writer.print("{");		
			writer.print("error:对不起,文件上传失败了!!!!");
			writer.print("}");
		}
		return null;
	}
}