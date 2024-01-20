<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VIEW</title>
    <style>
        *{
            margin:0;
            padding: 0;
            box-sizing:border-box;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            color:white;
        }

        html,body{
            height: 100%;
            width:100%;
            
        }
        
        body{
       background:url(backb.jpg);
        background-size:cover;
        
        
        }
        
       table {
    width: 200px;
    margin-left: auto;
    margin-right: auto;
    margin-top:2px;
    
    
}

th,td{
   padding:12px;
 }
 
 h1{
   margin-top:20px;
 
 }

    </style>
</head>
<body>

   <h1 align="center"> CUSTOMER DETAIL</h1>
   <main> 

    <section class="table_header"></section>
   
    <section class="table_body">
        <table>
            
                <tr>
                    <th> CID </th>
                    <th> CNAME </th>
                    <th> CEMAIL </th>
                    <th> BALANCE </th>
                    <th> ACTION </th> 
                </tr>
            
            
                <tr>
                 
                                     <%
try
{
Class.forName("com.mysql.jdbc.Driver");
String query="select * from customer";
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/priyadb","root","Piya@2907");
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
<tr><td><%=rs.getInt("cid") %></td>
<td><%=rs.getString("cname") %></td>
<td><%=rs.getString("email") %></td>
<td><%=rs.getInt("balance") %></td>

<td><a href="thistory.jsp"> View </a></td></tr>

 <%

}
%>
</table>
<%
rs.close();
stmt.close();
conn.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>
                        
                </tr>
            
        </table>
    </section>

   </main>
</body>
</html>