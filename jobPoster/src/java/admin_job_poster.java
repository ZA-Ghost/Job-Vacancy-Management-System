    
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
            String Job_Post = request.getParameter("job_description");
            String Closing_Date = request.getParameter("closing_date");
            
          
        
        try{
            Class.forName("com.mysql.jdbc.Driver"); //
             Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobposter","root","");
 
             String sql= "INSERT INTO job_post (date, job_post, closing_date) VALUES(?,?,?)";
       
             
             PreparedStatement pst = connection.prepareStatement(sql);
             
             
             pst.setString(1,Date);
             pst.setString(2,Job_Post);
             pst.setString(3,Closing_Date);
            
 
         
           
            if(Date.isEmpty() || Job_Post.isEmpty() || Closing_Date.isEmpty()){
                  out.println("Details Have Not Been Captured !!!");         
            }else{
                pst.executeUpdate();
                response.sendRedirect("admin-job-post.jsp");
             
            } 
            } 
        catch(ClassNotFoundException | SQLException e){
            System.out.println(e.getMessage());
            }   
        
        
    }

}
