<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!-- 배열 또는 List, null 등에 데이터가 저장 되었는지 확인하기 위한 length() 사용을 위한 선언 -->


<table>
	<tr>
        <td bgcolor="#336699">
            <p align="center">
            <font color="white"><b><span style="font-size:9pt;">번 호</span></b></font></p>
        </td>
        <td bgcolor="#336699">
            <p align="center"><font color="white"><b><span style="font-size:9pt;">제 목</span></b></font></p>
        </td>
        <td bgcolor="#336699">
            <p align="center"><font color="white"><b><span style="font-size:9pt;">작 성 자</span></b></font></p>
        </td>
        <td bgcolor="#336699">
            <p align="center"><font color="white"><b><span style="font-size:9pt;">작 성 일</span></b></font></p>
        </td>
        <td bgcolor="#336699">
            <p align="center"><font color="white"><b><span style="font-size:9pt;">조 회 수</span></b></font></p>
        </td>
    </tr>
    
 	<c:if test="${empty boardList || fn:length(boardList) == 0}">
		<tr>
	        <td colspan="5">
	            <p align="center"><b><span style="font-size:9pt;">등록된 방명록이 없습니다.</span></b></p>
	        </td>
	    </tr>
	</c:if>






	<%-- ArrayList에  GuestBookBean 객체를 하나하나 data라는 반복 대입해서 사용 --%>
	<c:forEach items="${requestScope.boardList}" var="data">
		    <tr>
		        <td bgcolor="">
		            <p align="center"><span style="font-size:9pt;">${data.boardNo}</span></p>
		        </td>
		        <td bgcolor="">
					<p><span style="font-size:9pt;">
					<!--  클릭은 제목 -> 해당 게시글의 상세보기
						상세보기를 위한 게시글 구분은 고유한 게시글 번호(num)
					 -->
					<a href="control?command=boardRead&title=${data.title}">${data.title}</a></span></p>
		        </td>
		        <td bgcolor="">
		            <p align="center"><span style="font-size:9pt;">
						<a href="mailto: ${data.userName}">
						 ${data.userName}</a>
					</span></p>
		        </td>
		        <td bgcolor="">
		            <p align="center"><span style="font-size:9pt;">
		             ${data.modifyDate}</span></p>
		        </td>
		        <td bgcolor="">
		            <p align="center"><span style="font-size:9pt;">
		             ${data.readNum}</span></p>
		        </td>
		    </tr>
	</c:forEach>
 	
    <tr>
        <td bgcolor="">
            <p align="center"><span style="font-size:9pt;"></span></p>
        </td>
        <td bgcolor="">
			<p><span style="font-size:9pt;"><a href="ReadAContent.jsp?num= "></a></span></p>
        </td>
        <td bgcolor="">
            <p align="center"><span style="font-size:9pt;">
				<a href="mailto:"></a>
			</span></p>
        </td>
        <td bgcolor="">
            <p align="center"><span style="font-size:9pt;"></span></p>
        </td>
        <td bgcolor="">
            <p align="center"><span style="font-size:9pt;"></span></p>
        </td>
    </tr>

</table>
<hr>
<div align=right>
<span style="font-size:9pt;">&lt;<a href="boardWrite.html">글쓰기</a>&gt;</span></div>

