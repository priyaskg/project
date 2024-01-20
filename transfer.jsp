<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;

        }

        body{
            display: flex;
            
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: url(backb.jpg);
            color: #fff;
        }

        .box{
         margin-top: 2px;
         position: relative;
         width: 50%;
         height: 85vh;
         background-color: #1c1c1c;
         border-radius: 8px;
         overflow: hidden;
    
        }

  

        .box::before{

content: '';
position: absolute;
width: 50%;
height: 400px;
top:-50%;
left:-50%;
background: linear-gradient(0deg,transparent,transparent,#45f3ff,#45f3ff);
z-index: 1;
transform-origin: bottom right;
animation: animate 6s linear infinite;

}

.box::after{

content: '';
position: absolute;
width: 50%;
height: 400px;
top:-50%;
left:-50%;
background: linear-gradient(0deg,transparent,transparent,#45f3ff,#45f3ff);
z-index: 1;
transform-origin: bottom right;
animation: animate 6s linear infinite;
animation-delay:-3s;
}

@keyframes animate
{
0%{
    transform: rotate(0deg);
}
100%{
    transform: rotate(360deg);
}
}

.borderLine{
position: absolute;
top:0;
inset: 0;
}

.borderLine::before{

content: '';
position: absolute;
width: 50%;
height: 900px;
top:-50%;
left:-50%;
background: linear-gradient(0deg,transparent,transparent,#f8f7f7,#41f537,#f25c2e,#6f065e);
z-index: 1;
transform-origin: bottom right;
animation: animate 6s linear infinite;
animation-delay: -1.5s;
}


.borderLine::after{

content: '';
position: absolute;
width: 50%;
height: 400px;
top:-50%;
left:-50%;
background-color: #1c1c1c;
background: linear-gradient(0deg,transparent,transparent,#c72158,#2f033b,#314e05,#e7e5e0);
z-index: 1;
transform-origin: bottom right;
animation: animate 9s linear infinite;
animation-delay: -1.5s;
}



        .box form{
    width: 99%;
    height: 98%;
    margin: auto;
    position: absolute;
    inset: 0px;
    background-color: #000;
    padding: 50px 40px;
    border-radius: 8px;
    z-index: 2;
    display: flex;
    flex-direction: column;
     }

     .box form h3{

color: #fff;
font-weight: 500;
text-align: center;
letter-spacing: 0.1len;

}

.box form .ipBox{
    
     
     position: relative;
     width: 300px;
     margin-top: 35px;
     
}

.box form .ipBox input{

position: relative;
width: 100%;
padding: 20px 10px 10px;
justify-content: center;
background: transparent;
outline: none;
box-shadow: none;
color: #fff;
font-size: 1em;
letter-spacing: 0.05em;
transition: 0.5s;
z-index: 10;
border: none;


}

.box form .ipBox span{

position: absolute;
left: 0;
padding: 20px 10px 10px;
pointer-events: none;
color: transparent;
font-size: 1em;
letter-spacing: 0.05em;
transition: 0.5s;
}

.box form .ipBox span{

position: absolute;
left: 0;
padding: 20px 10px 10px;
pointer-events: none;
color: #8f8f8f;
font-size: 1em;
letter-spacing: 0.05em;
transition: 0.5s;
}

.box form .ipBox input:valid ~ span,
.box form .ipBox input:focus ~span{
    color: #fff;
    font-size: 0.75em;
    transform: translateY(-34px);
}
.box form .ipBox i{
    position: absolute;
    left: 0;
    bottom: 0;
    width: 100%;
    height: 2px;
    background: #fff;
    border-radius: 4px;
    overflow: hidden;
    letter-spacing: 0.05em;
    transition: 0.5s;
    pointer-events: none;
}

.box form .ipBox input:valid ~ i,
.box form .ipBox input:focus ~ i{
    height: 44px;
    background:transparent;
    color: #fff;
}

.box form .links{
    margin-top: 90px;
    display: flex;
    justify-content: space-between;
}

.box form .links a{
    margin: 10px 0;
    font-size: 1em;
    color: #8f8f8f;
    text-decoration: none;
}

.box form .links a:hover,
.box form .links a:nth-child(2){
    color: #fff;
}

.box form input[type="submit"]{
    border: none;
    outline: none;
    padding: 9px 25px;
    background: #fff;
    cursor:progress;
    font-size: 0.9em;
    border-radius: 4px;
    font-weight: 600;
    margin-top: 10px;
    display: flex;
    flex-direction: column;
    width: 100px;
    margin-top: 10px;
    
    
}

.box form input[type="submit"]:active{
    opacity: 0.8;
}

.msg{
    margin:2px;
    position:absolute;
    top:0;
    color: #fff;
}

    </style>
</head>
<body>
    <div class="box">
        <span class="borderLine"></span>
        <form method="post">
            <h3> TRANSFER </h3>
              <div class="ipBox">
                 <input type="text" required="required" name="id">
                 <span> CID </span>
                 <i></i>
              </div>
              <div class="ipBox">
                <input type="text" required="required" name="cname">
                <span> NAME </span>
                <i></i>
             </div>
             <div class="ipBox">
                <input type="text" required="required" name="rname">
                <span> RECEIVER </span>
                <i></i>
             </div>
             <div class="ipBox">
                <input type="text" required="required" name="amt">
                <span> AMOUNT </span>
                <i></i>
             </div>
             <div class="links">
                <a href="thistory.jsp"> Go Back </a>
                <a href="index.jsp"> Home</a>
             </div>
             <input type="submit" value="Submit">
        </form>
    </div>
    <div class="msg">
<%
try{
	
	String id=request.getParameter("id");
	String cname=request.getParameter("cname");
	String rname=request.getParameter("rname");
	String amt=request.getParameter("amt");
	
	int cid=Integer.parseInt(id);
	int amt1=Integer.parseInt(amt);

	Class.forName("com.mysql.jdbc.Driver");
	System.out.println("Driver loaded");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/priyadb","root","Piya@2907");
	PreparedStatement ps=conn.prepareStatement("insert into transfer(tsender,treceiver,tamt,cid) values (?,?,?,?)");
	
	ps.setString(1,cname);
	ps.setString(2,rname);
	ps.setInt(3,amt1);
	ps.setInt(4,cid);
	int row=ps.executeUpdate();
	
	if(row==1){
		for(int i=0;i<10;i++){
		out.println();
	    }
	    out.println("SUCCESSFUL TRANSACTION");
		}
		else{
			out.println("ERROR!!! Please Try Again ");
		}
	   
	
   
    
	   
   
}catch(Exception e){
	System.out.println(e);
}
%>
</div>
</body>
</html>