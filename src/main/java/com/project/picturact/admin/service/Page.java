package com.project.picturact.admin.service;

import javax.inject.Named;

//@Component
@Named
public class Page {	
	private int startRow, endRow;
	private StringBuffer sb;
	
	public synchronized void paging(int pageNum, int totalCount, int pageSize, int pageBlock){
		int totalPage = (int) Math.ceil((double)totalCount/pageSize);
		startRow = (pageNum - 1) * pageSize+1;
		endRow = pageNum * pageSize;		
		
		int startPage = (int)((pageNum-1)/pageBlock)*pageBlock + 1;
		int endPage = startPage + pageBlock - 1;
				
		if(endPage > totalPage) {
			endPage = totalPage;
		}
		
		sb = new StringBuffer();
		sb.append("<ul class='pagination pagination-sm'>");
		if(startPage < pageBlock) {
			sb.append("<li class='disabled'><a href='#'>&laquo;</a></li>");			
		} else {
			sb.append("<li><a href='");
			sb.append("location.href=\"list.bbs?pageNum=");
			sb.append(startPage - pageBlock);
			sb.append("\"' >&laquo;</a></li>");
		}
		
		sb.append("&nbsp;&nbsp;");
		for(int i = startPage; i <= endPage; i++) {		
			if(i == pageNum) {
				sb.append("<li><a class='active' href='#'>");
				sb.append(i);
				sb.append("</a></li>");
			} else {
				sb.append("&nbsp;&nbsp;<li><a href='list.bbs?pageNum=");
				sb.append(i);
				sb.append("'>");
				sb.append(i);
				sb.append("</a></li>");
			}
		}
		
		sb.append("&nbsp;&nbsp;");		
		if(endPage < totalPage) {
			sb.append("<li><a href='");
			sb.append("\"list.bbs?pageNum=");
			sb.append(startPage + pageBlock);
			sb.append("\"'>&raquo;</a></li></ul> ");						
		} else {
			sb.append("<li><a calss='disabled' href='#'>&raquo;</a></li></ul>");
			
		}		
	}

	public int getStartRow() {
		return startRow;
	}

	public int getEndRow() {
		return endRow;
	}

	public StringBuffer getSb() {
		return sb;
	}

	
	

}
