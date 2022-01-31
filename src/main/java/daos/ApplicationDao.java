package daos;  
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import models.Application;
import models.EligibleStu;
import models.User;
import db.DBConnection;

  
public class ApplicationDao {  
  
   
	
     
    public static int save(Application app){  
        int status=0;  
        try{  
            Connection con = DBConnection.createConnection();  
            PreparedStatement ps=con.prepareStatement(  
                         "insert into applicationdetails(firstName,lastName,regNo,bank,branchName,accountNo,idNo,mobileNo) values (?,?,?,?,?,?,?,?)");  
            ps.setString(1,app.getFirstName());  
            ps.setString(2,app.getLastName());  
            ps.setString(3,app.getRegNo());  
            ps.setString(4,app.getBank());  
            ps.setString(5,app.getBranchName()); 
            ps.setString(6,app.getAccountNo());
            ps.setString(7,app.getIdNo());
            ps.setString(8,app.getMobileNo());
              
            status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return status;  
    }
    public static  List<Application> getAllEligibleApplications(){  
        List<Application> applicationList = new ArrayList<Application>();  
          
        try{  
            Connection con=DBConnection.createConnection();   
            PreparedStatement ps=con.prepareStatement("SELECT applicationdetails.stuID,"
            		+ " applicationdetails.firstName, applicationdetails.lastName,applicationdetails.bank,"
            		+ "applicationdetails.branchName,applicationdetails.accountNo,applicationdetails.idNo,"
            		+ "applicationdetails.mobileNo,"
            		+ "approvedstudents.regNo FROM applicationdetails INNER JOIN approvedstudents on applicationdetails.regNo=approvedstudents.regNo");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                Application app=new Application();  
                app.setStuID(rs.getInt(1));  
                app.setFirstName(rs.getString(2));  
                app.setLastName(rs.getString(3));  
                app.setBank(rs.getString(4)); 
                app.setBranchName(rs.getString(5)); 
                app.setAccountNo(rs.getString(6));
                app.setIdNo(rs.getString(7));
                app.setMobileNo(rs.getString(8));
                app.setRegNo(rs.getString(9));
                
                applicationList.add(app);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return applicationList;  
    }  
    public static  List<Application> getAllApplications(){  
        List<Application> allApplications=new ArrayList<Application>();  
          
        try{  
            Connection con=DBConnection.createConnection();   
            PreparedStatement ps=con.prepareStatement("select * from applicationdetails");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                Application apps=new Application();  
                apps.setStuID(rs.getInt(1));  
                apps.setFirstName(rs.getString(2));  
                apps.setLastName(rs.getString(3)); 
                apps.setRegNo(rs.getString(4));
                apps.setBank(rs.getString(5)); 
                apps.setBranchName(rs.getString(6)); 
                apps.setAccountNo(rs.getString(7));
                apps.setIdNo(rs.getString(8));
                apps.setMobileNo(rs.getString(9));
               
                
                allApplications.add(apps);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return allApplications;  
    }
    public static int save(EligibleStu el){  
        int status=0;  
        try{  
            Connection con = DBConnection.createConnection();  
            PreparedStatement ps=con.prepareStatement(  
                         "insert into approvedstudents(regNo) values (?)");  
            ps.setString(1,el.getRegNo());  
           
              
            status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return status;  
    }
 
    
}