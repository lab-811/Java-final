<%@include file="header.jsp"%>
<div class="login-form">
    <div class="well">
        <h3>Add a Book</h3>
        <form action="AddBookServlet" method="post" align="center">
            <input type="hidden" name="action" value="add">
            <label for="title">Book Title</label>
            <input type="text" class="ggg" placeholder="Enter the title of the book" name="title" id="title", required="required"><br>
            <label for="author">Author(s)</label>
            <input type="text" class="ggg" placeholder="Enter the name of the author" name="author" id="author" required="required"><br>
            <label for="image">Image</label>
            <input type="text" class="ggg" placeholder="Enter the link of the image" name="image" id="image"><br>
            <button type="submit" name="action" value="add">Add</button>
            <p><c:out value="${message}"/></p>
        </form>
    </div>
</div>
</body>
</html>





















