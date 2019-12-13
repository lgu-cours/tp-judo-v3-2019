<%@ page language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div style="height:100%; ">
<h3>Competitions</h3> 
( competitions.jsp )
<p>
<b>Liste des competitions</b>
</p>

<table border="1">
<tr> <td> Id </td> <td> Date </td>  <td> Type </td> <td> Ville </td> <td> Lieu </td> <td> Dept </td> </tr>
<c:forEach var="v" items="${requestScope.competitions}" >
<tr> 
 <td> ${v.id} </td> 
 <td> <fmt:formatDate value="${v.date}" pattern="dd/MM/yyyy" /> </td>  
 <td> ${v.nom} </td> 
 <td> ${v.ville} </td> 
 <td> ${v.adresse} </td> 
 <td> ${v.departement} </td> 
</tr>
</c:forEach>
</table>


</div>