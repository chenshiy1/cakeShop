<%@include file="head.jsp" %>

<div class="content-wrapper">
<form action="/CakePrj/cake/addOne" method="post">
	<h1>basic message</h1>
	cakeName:<input type="text" name="cakeName"/><br>
	color:<input type="text" name="color"/><br>
	taste:<input type="text" name="taste"/><br>
	discount:<input type="text" name="discount"/><br>
	discription:<input type="text" name="discription"/><br>
	img:<input type="text" name="img"/><br>
	img1:<input type="text" name="img1"/><br>
	img2:<input type="text" name="img2"/><br>
	img3:<input type="text" name="img3"/><br>
	<h1>size</h1>
	size:<input  type="text" name="size"/><br>
	price:<input type="text" name="price"/><br>
	<h1>type</h1>
	type:<input type="text" name="type"/><br>
	<input type="submit" value="submit" /><br>
</form>
<a href="/CakePrj/cake/check"><input type="button" value="check"/></a>
</div>


<%@include file="end.jsp" %>


