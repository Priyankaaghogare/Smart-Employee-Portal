<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>studentlogin</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>
<script type="text/javascript">

function editData(){

   alert("editData() Clicked...!! ");
   document.fn.action="edit";
   document.fn.submit();
	
}

function deleteData(id){

	   alert("deleteData() Clicked On Username...!!");
	   document.fn.action="delete";
	   document.fn.submit();
		
	}

</script>
</head>
<body>
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
  
   
  
    <tr>
      <td><input type="radio" name="id" value="${em.id}"></td> 
      <th scope="row">${em.id}</th>
      <td>${em.name}</td>
      <td>${em.age}</td>
      <td>${em.salary}</td>
      <td><button onclick="editData()" class="btn btn-primary">EDIT</button></td>
      <td><button onclick="deleteData(${em.id})" class="btn btn-warning">DELETE</button></td>
      
      
    </tr>
    

  </tbody>
</table>
  

 
</form>
</body>
</html>