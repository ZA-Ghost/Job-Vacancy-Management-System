    
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.*;


@WebServlet(urlPatterns = {"/admin_job_poster"})
public class admin_job_poster extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
            PrintWriter out = response.getWriter();
        
        
            String Date = request.getParameter("date");
            String Job_Post = request.getParameter("job_post");
            String Closing_Date = request.getParameter("closing_date");
            String jobTitle = request.getParameter("jobTitle");
            String jobStatus = request.getParameter("jobStatus");
            String jobReference = request.getParameter("jobReference");
        
        try{
            Class.forName("com.mysql.jdbc.Driver"); //
             Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobposter","root","");
 
             String sql= "INSERT INTO job_post (date, jobTitle, jobReference, job_post, closing_date, jobStatus) VALUES(?,?,?,?,?,?)";
       
             
             PreparedStatement pst = connection.prepareStatement(sql);
             
             
             pst.setString(1,Date);
             pst.setString(2,jobTitle);
             pst.setString(3,jobReference);
             pst.setString(4,Job_Post);
             pst.setString(5,Closing_Date);
             pst.setString(6,jobStatus);
            
 
         
           pst.executeUpdate();
                response.sendRedirect("admin-job-post.jsp");
            } 
        catch(ClassNotFoundException | SQLException e){
            System.out.println(e.getMessage());
            }   
        
        
    }

}
