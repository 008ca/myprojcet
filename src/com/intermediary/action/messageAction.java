package com.intermediary.action;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.intermediary.dao.messageDao;
import com.intermediary.model.Message;
import com.opensymphony.xwork2.ActionSupport;
@Controller @Scope("prototype")
public class messageAction extends ActionSupport{
	@Resource messageDao messageDao;
	private List<Message> messageList;
	private Message message;
	private String keyWords;
	private static final long serialVersionUID = 1L;
	
	public String getAll(){
		messageList=messageDao.queryAllMessage();
		return "ccc";
	}
	

	public Message getMessage() {
		return message;
	}

	public void setMessage(Message message) {
		this.message = message;
	}
	
	public String queryMessage() throws Exception {
		messageList=messageDao.queryMessageInfo(keyWords);
        return "show_view";
    }

	public String getKeyWords() {
		return keyWords;
	}

	public void setKeyWords(String keyWords) {
		this.keyWords = keyWords;
	}

	public List<Message> getMessageList() {
		return messageList;
	}

	public void setMessageList(List<Message> messageList) {
		this.messageList = messageList;
	}
	
	 public String getComMessage() throws Exception{
	        message=messageDao.getMessageById(message.getJobid());
	        return "one";
	 }
	 public String getComMessage2() throws Exception{
	        message=messageDao.getMessageById(message.getJobid());
	        return "two";
	 }
	 public String addComMessage(){
		 messageDao.addMessage(message);
		 return "success";
	 }
	 
	 public String deleteComMessage() throws Exception{
		 messageDao.deleteMessage(message.getJobid());
		 return "success";
	 }
     
	  
	 public String editMessage()  throws Exception{
		 messageDao.updateMessage(message);
		 System.out.println("assa");
		 return "success";
	 }
	 
	 public void updata() throws Exception{
		 messageDao.updateMessage(message);
	 }


}
