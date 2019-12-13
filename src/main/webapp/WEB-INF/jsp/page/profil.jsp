<%@ page language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 
<div style="height:100%; ">
<h3>Mon profil</h3>
( profil.jsp )
<form action="${requestScope.actionURI}/update-profil" method="post" >

<table>
<tr> <td> Nom               </td>  
     <td> <input style="width:160px" name="nom"    value="${judoka.nom}" /> </td> </tr>
<tr> <td> Pr�nom            </td>  
     <td> <input style="width:160px" name="prenom" value="${judoka.prenom}" /> </td> </tr>
<tr> <td> Date de naissance </td>  
     <td> <input style="width:80px"  name="dateNais" value="<fmt:formatDate value="${judoka.dateNais}" pattern="dd/MM/yyyy" />"/>  </td> </tr>
<tr> <td> Grade             </td>  <td> 
<%-- 
Composition de la liste des grades dans la combo box 
� partir de la liste stock�e au niveau application 
--%>
<select size="1" name="codeGrade" >

<%-- Boucle pour peupler les options de la combobox avec tous les grades --%>
<c:forEach var="grade" items="${applicationScope.grades}" >
 <%-- Variable locale "selected" valoris�e si le grade est le m�me que celui du profil du Judoka --%>
 <c:set var="selected" value="${grade.code == judoka.codeGrade ? 'selected' : '' }" scope="page" />
 
 <option value="${grade.code}"  ${selected}  > ${grade.libelle} </option>
</c:forEach>
</select> 
</td> </tr>
<tr> <td> Poids             </td>  <td> <input style="width:50px" name="poids" value="${judoka.poids}"/> </td> </tr>

<tr> <td> Login    </td>  <td> <input style="width:160px"  name="login" value="${judoka.login}" />  </td> </tr>
<tr> <td> Password </td>  <td> <input style="width:160px" type="password" name="password1" value="" />  </td> </tr>
<tr> <td> Password </td>  <td> <input style="width:160px" type="password" name="password2" value="" />  </td> </tr>
</table>
<button type="submit">Enregistrer</button>
</form> 


</div>