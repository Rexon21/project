<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="FirstPage.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Playwrite+CU:wght@100..400&display=swap"
	rel="stylesheet">
<script type="text/javascript" src="FirstPage.js"></script>
</head>
<%
String name = (String) session.getAttribute("Name");
%>
<script type="text/javascript">
function openSlide(){
	document.querySelector(".navbar").classList.toggle("navbar-open");
	
}



</script>
<body>


	<header>
		<h1>Fashion Store</h1>
		<nav>
			<a href="#">Home</a> <a href="#">Products</a> <a href="#">Cart</a> <a
				href="#">Contact</a> <a style="cursor: pointer;" " class="menu"
				onClick="openSlide()">User</a>
		</nav>
	</header>
	<main>
		<section class="products">
			<div class="product">
				<img src="image/tshirt1.webp" alt="Product 1">
				<h2>Product 1</h2>
				<p>RS.1999 Only</p>
				<form  action="CartServlet" method="post" id="add-to-cart">
					<input type="hidden" name="product_id" value="123">
					<input type="hidden" name="price" value="2000">
				    <label
						for="quantity">Quantity:</label> <input type="number"
						id="quantity" name="quantity" value="1" min="1">
					<input type="submit" value="Add to Cart">
				</form>
			</div>
			<div class="product">
				<img
					src="https://imgs.search.brave.com/jNm7LVMyJLsvPHVF4tH-GA4nwQvlLZKm9KXWh0-vzE8/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9paDEu/cmVkYnViYmxlLm5l/dC9pbWFnZS43ODkw/NTEzODAuNDMxMS9z/c3JjbyxjbGFzc2lj/X3RlZSx3b21lbnMs/ZTVkNmM1OmY2MmJi/ZjY1ZWUsZnJvbnRf/YWx0LHNxdWFyZV9w/cm9kdWN0LDYwMHg2/MDAudTUuanBn"
					alt="Product 2">
				<h2>Product 2</h2>
				<p>RS.2000 Only</p>
				<form class="add-to-cart" action="Cart" method="post">
					<input type="hidden" name="product_id" value="124">
					<input type="hidden" name="price" value="2000">
					 <label
						for="quantity">Quantity:</label> <input type="number"
						id="quantity" name="quantity" value="1" min="1">
					<button type="submit">Add to Cart</button>
				</form>
			</div>
			<div class="product">
				<img
					src="https://imgs.search.brave.com/6wDaFrWD0g97dFeBcFzP9OtsljS9iJEy0mIf0YbX58I/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9paDEu/cmVkYnViYmxlLm5l/dC9pbWFnZS40OTIw/ODIzNi40NjU4L3Nz/cmNvLHNsaW1fZml0/X3Rfc2hpcnQsbWVu/cyxmYWZhZmE6Y2E0/NDNmNDc4Nixmcm9u/dCxzcXVhcmVfcHJv/ZHVjdCw2MDB4NjAw/LnU0LmpwZw"
					alt="Product 2">
				<h2>Product 3</h2>
				<p>RS.1999 Only</p>
				<form class="add-to-cart" action="Cart" method="post">
					<input type="hidden" name="product_id" value="125">
					<input type="hidden" name="price" value="1999">
					 <label
						for="quantity">Quantity:</label> <input type="number"
						id="quantity" name="quantity" value="1" min="1">
					<button type="submit">Add to Cart</button>
				</form>
			</div>
			<!-- Add more products as needed -->
		</section>
		<section class="cart">
			<h2>Shopping Cart</h2>
			<ul id="cartItems"></ul>
			<p>
				Total: RS<span id="totalPrice">0.00</span>
			</p>
		</section>
	</main>


	<div class="navbar">
		<a href="userpage.jsp" class="navbar_link"><span
			class="material-icons"> account_circle </span> User Profile</a> <a
			href="out" class="navbar_link"><span class="material-icons">
				exit_to_app </span> Logout </a>


	</div>

</body>
</html>