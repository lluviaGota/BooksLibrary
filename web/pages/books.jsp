<%@page import="java.util.ArrayList"%>
<%@page import="beans.Book"%>
<!DOCTYPE html>

<%@include file="../WEB-INF/jspf/left_menu.jspf" %>

<%request.setCharacterEncoding("UTF-8");
    
    long genreId = 0L;
    
    try {
        genreId = Long.valueOf(request.getParameter("genre_id"));
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>

<jsp:useBean id="bookList" class="beans.BookList" scope="page"/>

<div class="book_list">
    <h3>${param.name}</h3>
    

        <%
            ArrayList<Book> list = bookList.getBooksByGenre(genreId);
            session.setAttribute("currentBookList", list);
            for (Book book : list) {
                
        %>
        
            <div class="book_info">
                <div class="book_title">
                <p> <%=book.getName()%></p>
                </div>
                <div class="book_image">
                <img src="<%=request.getContextPath()%>/ShowImage?index=<%=list.indexOf(book) %>" height="250" width="190" alt="Cover"/>
                </div>
                <div class="book_details">
                <br><strong>ISBN:</strong> <%=book.getIsbn()%>
               
                <br><strong>Pages:</strong> <%=book.getPageCount() %>
                <br><strong>Year:</strong> <%=book.getPublishDate() %>
                <br><strong>Author</strong> <%=book.getAuthor() %>
                <p style="margin:10px;"> <a href="#">Read</a></p>
                </div>
       </div>
            
       
        <%}%>


  
</div>