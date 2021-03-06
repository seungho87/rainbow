package manager.paging;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class ManagerPaging {

	private int currentPage; //현재페이지
	private int pageBlock; //페이지 블럭
	private int pageSize; //1페이지당 나타낼 페이지 수
	private int totalA; //총 글수
	private StringBuffer pagingHTML; // html 추가해야할 객체
	
	public void makePagingHTML() {
		pagingHTML = new StringBuffer();
		
		int totalPage = (totalA+pageSize-1)/pageSize;
		int startPage = (currentPage-1)/pageBlock*pageBlock+1;
		int endPage = startPage+pageBlock-1;
		if(endPage > totalPage) {
			endPage = totalPage;
		}
		
		if(startPage>pageBlock) {
			pagingHTML.append("[<span id='paging' onclick='paging("+(startPage-1)+")'>이전</span>]"); 
		}//if
		
		for(int i=startPage; i<=endPage; i++) {
			if(i==currentPage) {
				pagingHTML.append("[<span id='currentPaging' onclick='paging("+i+")'>"+i+"</span>]");
			} else {
				pagingHTML.append("[<span id='paging' onclick='paging("+i+")'>"+i+"</span>]");
			}//if~else
		}//for
		
		if(endPage<totalPage) {
			pagingHTML.append("[<span id='paging' onclick='paging("+(endPage+1)+")'>다음</span>]");
		}//if	
	}
}
