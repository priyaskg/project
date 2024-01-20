<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.0.0/fonts/remixicon.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://unpkg.com/sheryjs/dist/Shery.css" /> <!-- Recommended -->
    <link rel="stylesheet" href="style.css">
</head>
<body class="main1">
    <div id="main"> 
        <div id="home">
            <div id="nav"> 
                <img class="magnet" src="logo.png" alt="logo">
                <div id="right">
                    <a href="#"> HOME </a>
                    <a href="viewc.jsp"> VIEW </a>
                    <i class="ri-menu-search-line magnet"></i> <!--magnet is class name-->
                </div>
            </div>
            <div id="homemain"> 
                <h4> Transactions made more easier. </h4>
                <div class="headings">
                    <h1 class="hvr" id="h11"> The </h1>
                    <h1 class="hvr" id="h12"> Sparks </h1>
                    <h1 class="hvr" id="h13"> Foundation </h1>
                </div>
            </div>

            <div id="homelast">
                <p>
                    Latest technological innovations have improved the security of online banking.
                    <br> These include encryption technology, two factor authentication, and secure server technology.
                    <br> Banks also ensure their online banking systems are regularly updated with the latest security measures.
                </p>
            </div>
            
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/ScrollTrigger.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/0.155.0/three.min.js"></script>
    <script  type="text/javascript"  src="https://unpkg.com/sheryjs/dist/Shery.js"></script> <!-- Recommended -->
    <script src="index.js"></script>
</body>
</html>