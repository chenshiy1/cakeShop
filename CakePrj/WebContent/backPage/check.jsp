
<%@include file="head.jsp" %>




<div class="content-wrapper">

	<table  border="1" cellspacing="0" cellpadding="0" align="center">
		<tr>
			<td>cakeId</td>
			<td>cakeName</td>
			<td>color</td>
			<td>taste</td>
			<td>discount</td>
			<td>date</td>
			<td>discription</td>
			<td>img</td>
			<td>img1</td>
			<td>img2</td>
			<td>img3</td>
			<td>size</td>
			<td>price</td>
			<td>type</td>
		</tr>
		
		<c:forEach var="cake" items="${back_allCakeList}">
		
			<div >
				<tr id="div${cake.cakeId}">
					<td>${cake.cakeId }</td>
					<td>${cake.cakeName }</td>
					<td>${cake.color }</td>
					<td>${cake.taste }</td>
					<td>${cake.discount }</td>
					<td>${cake.date }</td>
					<td>${cake.discription }</td>
					<td>${cake.img }</td>
					<td>${cake.img1 }</td>
					<td>${cake.img2 }</td>
					<td>${cake.img3 }</td>
					<td>
						<c:forEach var="size" items="${back_allSize }">
							<c:if test="${size.cakeId == cake.cakeId}">${size.size}&nbsp;</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="size" items="${back_allSize }">
							<c:if test="${size.cakeId == cake.cakeId}">${size.price}&nbsp;</c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach var="type" items="${back_allType }">
							<c:if test="${type.cakeId == cake.cakeId}">${type.type}&nbsp;</c:if>
						</c:forEach>
					</td>
					<td> 
						<input type="button" value="delete"  onclick="dele(${cake.cakeId})"/>
					</td>
				</tr>
			</div>
			
		</c:forEach>
		

	</table>
	
	<a href="/CakePrj/backPage/add.jsp"><input type = "button" value="add" /></a>
	
</div>

<%@include file="end.jsp" %>




 <script type="text/javascript" >
	

	
	function dele(id){
		document.getElementById("div" +id).style.display = 'none';
		$.ajax({
			type:'post',
			url:'/CakePrj/cake/deleteOne',
			data:{cakeId:id}
		});
	}
</script>



