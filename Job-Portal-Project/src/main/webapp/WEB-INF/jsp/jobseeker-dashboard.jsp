<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Dashboard!</title>
	<script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	<link href='http://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
	<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/company-registration.js"></script>
<%-- 	<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet"></link>
 --%>	<script src="${pageContext.request.contextPath}/js/login-validation.js"/></script>    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%--     <link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet"></link>
 --%>    
<style>

body{
	background-color: #eaedef;
	background-image: url("1.jpg");
}

.head{
	height: 80px;
	background-color: #62C192;
}

.rounder{
	border-radius: 50%;
}

.field{
	background: #f2f5f6;
	border-style: none;
	border-bottom-style: solid;
	border-bottom-width: .5px;
	border-bottom-color: #62C192;
}

.field:focus {
  border-color: #62C192;
  box-shadow: #62C192;  
}

.btn1{
	background-color: #62C192;
	border-color: #62C192;
	margin-left: 70px;
}

.btn1: hover{
	background-color: #62C192;
	border-color: #62C192;
}

h1{
	margin-left: 520px;
}

#error{
	text-align: middle;
}
html,
body{
margin:0;
padding: 0;
backhround: #eaedef;
}

.btn{
    background: #163aaf;
	color: white;   
}
.btn1{
	background: #62C192;
}

.nv{
	background-color: #163aaf!Important;
}

.wh{
	color: white!Important;
}

.ack{
	margin-left: 30%;
}



.sidebar{
	background-color: #d1dbff;
	height: 400px;
	width: 100%;
}

.dp{
	margin-top: 30px;
	vertical-align:middle;
	margin-left: 15%;
	/*  border-radius: 50%; */
}

.comp{
	font-size: 14px;
}

.outer{
	margin-top: 60px;
}

.name{
	text-align: center;
  	margin: 0 auto;
	width: 200px;
	margin-top: 10px;
}

.data{
	margin-left: 100px;
    min-width: 100%;
    width: 657px;
}

.desc{

}

.item{
	min-height: 100px;
	width: 100%;
	background-color: #d1dbff;
	margin-left: 5px;
	margin-top: 10px;
	min-height: 100px;
	padding-bottom: 10px;
    margin-bottom: 15px;
}

.cl{
	width: 69px;
	height: 69px;
	border-radius: 50%;
	margin-left: 8px;
	margin-top: 8px;
}

.headd{
	float: left;
}

.pagination{
	margin-left: 42%;
}


.pagination li
{
    list-style:none;  
    float:left;
    width : 35px;
    height: 30px;
    border: .5px solid #163aaf;
    background-color:white;
    color: #163aaf;
    text-align:center;
    cursor:pointer;
    margin: 2px;
}

.pagination li:hover
{
    background-color: #163aaf;
    border:1px solid #163aaf;
    color: white;
}

.pagination ul
{
    border: 0px;
    padding: 0px;
}

.active-class
{
	background-color: #163aaf !important;
    border:.4 px solid #163aaf !important;
    color: white !important;	
}


</style>

</head>
<body>

<nav class="navbar navbar-toggleable-md navbar-light bg-faded nv" style="height: 70px">
  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="container">
	  <a class="navbar-brand wh" href="#">Spring Onions</a>
	
	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav ml-auto">
	      
	      <li class="nav-item active dropdown">
	        <a class="nav-link dropdown-toggle wh" data-toggle="dropdown">
	          My Account
	        </a>
	        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
	          <a class="dropdown-item" href="/jobseeker/<%=session.getAttribute("username")%>/profile">View Profile</a>

<%-- 	          <a class="dropdown-item" href="/jobseeker/app/<%=session.getAttribute("email")%>">View Applications</a>
	          <a class="dropdown-item" href="/company/register">Edit Profile</a>
 --%>

	        <!--   <a class="dropdown-item" href="/company/register">View Job History</a> -->
	        <!--   <a class="dropdown-item" href="/company/register">Edit Profile</a> -->

	          <a class="dropdown-item" href="/jobseeker/app/<%=session.getAttribute("email")%>">View Applied Jobs</a>
	          <a class="dropdown-item" href="/jobseeker/<%=session.getAttribute("username")%>/viewInterestedJobs">View Interested Jobs</a>
	         

	        </div>
	        	     <li class="nav-item active">
	     <form id="jobs" action="/positions/searchByFields" method="POST">
	        <a class="nav-link mr-sm-2 wh" href="#" onclick="document.getElementById('jobs').submit();">Jobs</a></form>
	      </li>
	      </li>
	       <li class="nav-item active">
	        <a class="nav-link mr-sm-2 wh" href="/jobseeker/logout">Log Out <span class="sr-only">(current)</span></a>
	      </li>

	    </ul>
	  </div>
</div>

</nav>

	<div class="row outer">
	
		<div class="col-md-1"></div>
		<div class="col-md-2 sidebar" style="text-align">
			<!-- side bar for profile review -->
			<img class="img-responsive dp" src="${picture}" width="75%">
		
			<div class="name">${firstName}&nbsp;${lastName}</div>
 			<br>
			<div class="">
			
			</div>
		</div>
		<div class="col-md-7">
		<!-- job card section -->
		
			<table class="table list-of-posts">
		 		<thead>
					<tr>
			      		<th>Popular Jobs</th>
			    	</tr>
			    </thead>
			    
				<c:forEach items="${topJobs}" var="topJobValue">
		  	    <tbody>
		  	    	<tr class="row item post">
		  	    		<td style="max-width: 100px">
		  	    			<img class="img-responsive cl" src="${topJobValue.jobPostedByCompany.getLogoUrl()}">
		  	    			<br>
		  	    			<div class="data" style="color:grey">
		  	    				<div class="desc">
		  	    					Description<br>
		  	    					<c:out value="${topJobValue.getJobDescription()}" />
		  	    				</div>
		  	    				
		  	    				<div class="desc">
		  	    					Responsibilities<br>
		  	    					<c:out value="${topJobValue.getJobResponsibilities()}" />
		  	    				</div>
		  	    				
		  	    				<%-- <div class="desc">
		  	    					Salary: <c:out value="${topJobValue.getJobSalary()}" />
		  	    				</div>
		  	    				 --%>
		  	    				<div class="desc">
		  	    					Location: <c:out value="${topJobValue.getJobLocation()}" />
		  	    				</div>
		  	    				
		  	    				<div class="desc">
		  	    					Posted On: <c:out value="${topJobValue.getPostedOn()}" />
		  	    				</div>
		  	    				
		  	    				<%-- <div class="desc">
		  	    					Eligibility: <c:out value="${topJobValue.getEligibility()}" />
		  	    				</div>
		  	    				 --%>
		  	    				 <br>
		  	    				<div class="desc">
		  	    					<form action="/positions/${topJobValue.getJobId()}" method="GET" >
						       			<input type= "submit" class="btn" value="Learn More">
		  	    						<input type= "submit" class="btn" value="Apply Now">
						       		</form>
		  	    					
		  	    				</div>
		  	    				
		  	    			</div>
		  	    		</td>
		  	    		
		  	    		<td style="padding-top: 24px;font-size: 21px;">
		  	    			<c:out value="${topJobValue.getJobTitle()}" /><br>
		  	    			<div class="comp">"${topJobValue.getJobPostedByCompany().getCompanyName()}"</div>
		  	    		</td>
				      	<%-- <td style="padding-top:27px;margin-left:300px;">
				       		<form action="/positions/${topJobValue.getJobId()}" method="GET" >
				       			<input type="submit" value="Apply Now!"/>
				       		</form>
				      	</td> --%>
				    </tr>	    
			    </tbody>
			    </c:forEach>
			</table>
			
		
		</div>
		<div class="col-md-2">
		<!-- right section -->
	
		</div>
	</div>
	<div class="row">
		<div class="col-md-1"></div>
		<div class="col-md-2"></div>
		
		<div class="col-md-7">
			<div class="pagination"></div>
		</div>
	</div>
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/paginate.js"></script>
<script src="${pageContext.request.contextPath}/js/custom.js"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>