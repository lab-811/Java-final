package org.example.Islambek;

import org.example.Islambek.config.JDBCUtils;
import org.example.Islambek.exception.IncorrectIdOfBookException;
import org.example.Islambek.exception.model.ErrorResponse;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class DeleteBookServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            Long id = Long.valueOf(request.getParameter("bookId"));

        Connection connection = JDBCUtils.getConnection();

        try {
            PreparedStatement preparedStatement2 = connection.prepareStatement("SELECT * FROM Books WHERE  id=?");
            preparedStatement2.setLong(1, id);
            ResultSet resultSet = preparedStatement2.executeQuery();

            if (!resultSet.next()){
                throw  new IncorrectIdOfBookException("NO SUCH BOOK WITH THAT ID");
            }



            PreparedStatement preparedStatement1 = connection.prepareStatement("DELETE FROM Books WHERE id=?");

            preparedStatement1.setLong(1,id);

            preparedStatement1.executeUpdate();

            String message;

            {
                message = "The Book has been successfully deleted";
            }

            request.setAttribute("message", message);
            request.getRequestDispatcher("deleteBook.jsp").include(request,response);

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
