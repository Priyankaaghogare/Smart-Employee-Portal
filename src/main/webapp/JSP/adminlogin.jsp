<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>
<script type="text/javascript">

function editData(){

   alert("editData() Clicked...!! ");
   document.fn.action="edit";
   document.fn.submit();
	
}

function deleteData(){

	   alert("deleteData() Clicked On Username...!!");
	   document.fn.action="delete";
	   document.fn.submit();
		
	}

</script>
</head>
<body>

<h1>Admin Login</h1>
<form name="fn">

<table class="table table-hover" border="1">

  <thead>
    <tr>  
      <tr>  
      <th scope="col"> Select </th>
      <th scope="col">ID</th>
      <th scope="col">NAME</th>
      <th scope="col">AGE</th>
      <th scope="col">SALARY</th>
      <th scope="col" colspan="2">Actions</th>
    </tr>
  </thead>
  <tbody>
  
  <c:forEach items="${employee}" var="e">   
  
    <tr>
      <td><input type="radio" name="id" value="${e.id}"></td> 
      <th scope="row">${e.id}</th>
      <td>${e.name}</td>
      <td>${e.age}</td>
      <td>${e.salary}</td>
      <td><button onclick="editData()" class="btn btn-primary">EDIT</button></td>
      <td><button onclick="deleteData(${e.id})" class="btn btn-warning">DELETE</button></td>
      
      
    </tr>
    
 </c:forEach>
  </tbody>
</table>
  

 
</form>
</body>
</html>