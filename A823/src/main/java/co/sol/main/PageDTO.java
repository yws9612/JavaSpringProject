package co.sol.main;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageDTO {
	
	private int start, end;
	private boolean prev, next;
	
	
	private int total;
	private Basic ba;
	
	
	public PageDTO(Basic ba, int t) {
		this.ba=ba;
		total=t;
		                           
		                                                  //현재페이지 10    10
		this.end=(int)(Math.ceil(ba.getPageNum()/10.0))*10;  //현재페이지 11    20 
		                                                  //현재페이지 1     10
		this.start=this.end-9;
		
		this.prev=this.start > 1;
		
		int eend=(int)(Math.ceil((total*1.0)/ ba.getAmount()));
		
		//게시글이 90개 10개 씩 보여줘야 한다
		
		this.end = eend <= end ? eend:end;
		
		this.next=this.end < eend;
		
	}
	

}
