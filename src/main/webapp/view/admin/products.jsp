<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    
    <!-- Link css -->
    <link rel="stylesheet" href="admin.css">
    <!-- Font AWESOME -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css" integrity="sha512-5Hs3dF2AEPkpNAR7UiOHba+lRSJNeM2ECkwxUIxC1Q/FLycGTbNapWXB4tP889k5T5Ju8fs4b1P5z/iB4nMfSQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Garden Centre</title>
</head>
<body>
<style>
@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Playwrite+HR+Lijeva:wght@100..400&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Lora:ital,wght@0,400..700;1,400..700&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Rubik:ital,wght@0,300..900;1,300..900&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@100..900&display=swap');


*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
a{
    text-decoration: none;
}
li{
    list-style: none;
}

:root {
    --robotoslab : 'Roboto Slab', serif;
    --light: #F9F9F9;
    --blue: #1dd1a1;
    --light-blue: #CFE8FF;
    --grey: #eee;
    --dark-grey: #AAAAAA;
    --dark: #342E27;
    --red: #DB504A;
    --yellow: #FFCE26;
    --light-yellow: #FFF2C6
    --orange: #FD7238;
    --light-orange: #FFE0D3;
}

body {
    background: var(--grey);
    /* background-color: #c4f5d3; */
}

/* side bar */
#sidebar {
	position: fixed;
	top: 0;
	left: 0;
	width: 280px;
	height: 100%;
	background: var(--light);
	z-index: 2000;
	font-family: var(--lato);
	transition: .3s ease;
	overflow-x: hidden;
	scrollbar-width: none;
}
#sidebar::--webkit-scrollbar {
	display: none;
}
#sidebar.hide {
	width: 60px;
}
#sidebar .brand {
	font-size: 24px;
	font-weight: 700;
	height: 56px;
	display: flex;
	align-items: center;
	color: var(--blue);
	position: sticky;
	top: 0;
	left: 0;
	background: var(--light);
	z-index: 500;
	padding-bottom: 20px;
	box-sizing: content-box;
}
#sidebar .brand .bx {
	min-width: 60px;
	display: flex;
	justify-content: center;
}
#sidebar .side-menu {
	width: 100%;
	margin-top: 48px;
}
#sidebar .side-menu li {
	height: 48px;
	background: transparent;
	margin-left: 6px;
	border-radius: 48px 0 0 48px;
	padding: 4px;
}
#sidebar .side-menu li.active {
	background: var(--grey);
	position: relative;
}
#sidebar .side-menu li.active::before {
	content: '';
	position: absolute;
	width: 40px;
	height: 40px;
	border-radius: 50%;
	top: -40px;
	right: 0;
	box-shadow: 20px 20px 0 var(--grey);
	z-index: -1;
}
#sidebar .side-menu li.active::after {
	content: '';
	position: absolute;
	width: 40px;
	height: 40px;
	border-radius: 50%;
	bottom: -40px;
	right: 0;
	box-shadow: 20px -20px 0 var(--grey);
	z-index: -1;
}
#sidebar .side-menu li a {
	width: 100%;
	height: 100%;
	background: var(--light);
	display: flex;
	align-items: center;
	border-radius: 48px;
	font-size: 16px;
	color: var(--dark);
	white-space: nowrap;
	overflow-x: hidden;
}
#sidebar .side-menu.top li.active a {
	color: var(--blue);
}
#sidebar.hide .side-menu li a {
	width: calc(48px - (4px * 2));
	transition: width .3s ease;
}
#sidebar .side-menu li a.logout {
	color: var(--red);
}
#sidebar .side-menu.top li a:hover {
	color: var(--blue);
}
#sidebar .side-menu li a .bx {
	min-width: calc(60px  - ((4px + 6px) * 2));
	display: flex;
	justify-content: center;
}
/* side bar */

/* CONTENT */
#content {
	position: relative;
	width: calc(100% - 280px);
	left: 280px;
	transition: .3s ease;
}
#sidebar.hide ~ #content {
	width: calc(100% - 60px);
	left: 60px;
}




/* NAVBAR */
#content nav {
	height: 56px;
	background: var(--light);
	padding: 0 24px;
	display: flex;
	align-items: center;
	grid-gap: 24px;
	font-family: var(--lato);
	position: sticky;
	top: 0;
	left: 0;
	z-index: 1000;
}
#content nav::before {
	content: '';
	position: absolute;
	width: 40px;
	height: 40px;
	bottom: -40px;
	left: 0;
	border-radius: 50%;
	box-shadow: -20px -20px 0 var(--light);
}
#content nav a {
	color: var(--dark);
}
#content nav .bx.bx-menu {
	cursor: pointer;
	color: var(--dark);
}
#content nav .nav-link {
	font-size: 16px;
	transition: .3s ease;
}
#content nav .nav-link:hover {
	color: var(--blue);
}
#content nav form {
	max-width: 400px;
	width: 100%;
	margin-right: auto;
}
#content nav form .form-input {
	display: flex;
	align-items: center;
	height: 36px;
}
#content nav form .form-input input {
	flex-grow: 1;
	padding: 0 16px;
	height: 100%;
	border: none;
	background: var(--grey);
	border-radius: 36px 0 0 36px;
	outline: none;
	width: 100%;
	color: var(--dark);
}
#content nav form .form-input button {
	width: 36px;
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	background: var(--blue);
	color: var(--light);
	font-size: 18px;
	border: none;
	outline: none;
	border-radius: 0 36px 36px 0;
	cursor: pointer;
}
#content nav .notification {
	font-size: 20px;
	position: relative;
}
#content nav .notification .num {
	position: absolute;
	top: -6px;
	right: -6px;
	width: 20px;
	height: 20px;
	border-radius: 50%;
	border: 2px solid var(--light);
	background: var(--red);
	color: var(--light);
	font-weight: 700;
	font-size: 12px;
	display: flex;
	justify-content: center;
	align-items: center;
}
#content nav .profile img {
	width: 36px;
	height: 36px;
	object-fit: cover;
	border-radius: 50%;
}
#content nav .switch-mode {
	display: block;
	min-width: 50px;
	height: 25px;
	border-radius: 25px;
	background: var(--grey);
	cursor: pointer;
	position: relative;
}
#content nav .switch-mode::before {
	content: '';
	position: absolute;
	top: 2px;
	left: 2px;
	bottom: 2px;
	width: calc(25px - 4px);
	background: var(--blue);
	border-radius: 50%;
	transition: all .3s ease;
}
#content nav #switch-mode:checked + .switch-mode::before {
	left: calc(100% - (25px - 4px) - 2px);
}
/* NAVBAR */
/*CONTENT*/
#content main {
	width: 100%;
	padding: 36px 24px;
	font-family: var(--poppins);
	max-height: calc(100vh - 56px);
	overflow-y: auto;
}
#content main .head-title {
	display: flex;
	align-items: center;
	justify-content: space-between;
	grid-gap: 16px;
	flex-wrap: wrap;
}
#content main .head-title .left h1 {
	font-size: 36px;
	font-weight: 600;
	margin-bottom: 10px;
	color: var(--dark);
}
#content main .head-title .left .breadcrumb {
	display: flex;
	align-items: center;
	grid-gap: 16px;
}
#content main .head-title .left .breadcrumb li {
	color: var(--dark);
}
#content main .head-title .left .breadcrumb li a {
	color: var(--dark-grey);
	pointer-events: none;
}
#content main .head-title .left .breadcrumb li a.active {
	color: var(--blue);
	pointer-events: unset;
}
#content main .head-title .btn-download {
	height: 36px;
	padding: 0 16px;
	border-radius: 36px;
	background: var(--blue);
	color: var(--light);
	display: flex;
	justify-content: center;
	align-items: center;
	grid-gap: 10px;
	font-weight: 500;
}

#content main .table-data {
	display: flex;
	flex-wrap: wrap;
	grid-gap: 24px;
	margin-top: 24px;
	width: 100%;
	color: var(--dark);
}
#content main .table-data > div {
	border-radius: 20px;
	background: var(--light);
	padding: 24px;
	overflow-x: auto;
}
#content main .table-data .head {
	display: flex;
	align-items: center;
	grid-gap: 16px;
	margin-bottom: 24px;
}
#content main .table-data .head h3 {
	margin-right: auto;
	font-size: 24px;
	font-weight: 600;
}
#content main .table-data .head .btn-download {
    height: 30px;
	padding: 0 16px;
	border-radius: 36px;
	background: var(--blue);
	color: var(--light);
	display: flex;
	justify-content: center;
	align-items: center;
	grid-gap: 10px;
	font-weight: 500;
}
#content main .table-data .head .btn-download:hover {
    background: #74b9ff;
}
#content main .table-data .head .bx {
	cursor: pointer;
}

#content main .table-data .order {
	flex-grow: 1;
	flex-basis: 500px;
}
#content main .table-data .order table {
	width: 100%;
	border-collapse: collapse;
}
#content main .table-data .order table th {
	padding-bottom: 12px;
	font-size: 13px;
	text-align: left;
	border-bottom: 1px solid var(--grey);
}
#content main .table-data .order table td {
	padding: 16px 0;
}
#content main .table-data .order table tr td:nth-child(2) {
	display: flex;
	align-items: center;
	grid-gap: 12px;
	padding-left: 6px;
}
#content main .table-data .order table td img {
	width: 40px;
	height: 40px;
	border-radius: 50%;
	object-fit: cover;
}
#content main .table-data .order table tbody tr:hover {
	background: var(--grey);
}
#content main .table-data .order table tr td .type {
	font-size: 10px;
	padding: 6px 16px;
	color: var(--light);
	border-radius: 20px;
	font-weight: 700;
}
#content main .table-data .order table tr td .type.mg {
	background: var(--blue);
}
#content main .table-data .order table tr td .type.fm {
	background: var(--yellow);
}
#content main .table-data .order table tr td .type.rg {
	background: #FD7238;
}
.btn-action-product {
    display: flex;
    margin-bottom: 16px;

}
.bx-edit, .bx-x-circle {
    font-size: 20px;
    cursor: pointer;
}
.bx-edit:hover, .bx-x-circle:hover {
    color: var(--blue);
}

/*CONTENT*/

/* MODAL */

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}
  
  /* Modal Content */
.modal-content {
    background-color: #fefefe;
    margin: auto;
    margin-left: 300px;
    padding: 20px;
    border: 1px solid #888;
    width: 75%;
}
.modal-content-category {
    background-color: #fefefe;
    margin: auto;
    margin-left: 300px;
    padding: 20px;
    border: 1px solid #888;
    width: 50%;
}
  
  /* The Close Button */
.close {
    color: #aaaaaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}
  
.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}
.left {
    display: flex;
    justify-content: space-between;
    flex-direction: row;
    padding: 20px;
}
.left-modal{
    width: 55%;
    height: 100%;
    display: flex;
    flex-direction: column;
    justify-content: center;
    padding-left: 10px;
}
.left-modal-category{
    width: 100%;
    height: 100%;
    display: flex;
    flex-direction: column;
    justify-content: center;
    padding-left: 10px;
}
.info-product{
    display: flex;
    justify-content: center;
    flex-direction: column;
    padding: 5px;
}
.info-product span {
    font-size: 15px;
    font-weight: 500;
    color: #636e72;
}
.info-product input,.info-product select {
    width: 90%;
    height: 30px;
    border: 1px solid #dfe6e9;
    border-radius: 5px;
    padding: 5px;
    margin-top: 5px;
}
.btn-confirm-info{
    width: 100%;
    padding-top: 10px;
    display: flex;
}
.btn-confirm-info input {
    width: 90%;
    height: 30px;
    border: none;
    background-color: var(--blue);
    color: white;
    font-size: 15px;
    font-weight: 600;
    cursor: pointer;
}
/* image upload modal */
.right-modal{
    width: 45%;
    height: 100%;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    padding-right: 10px;
}
.upload-container {
    background-color: white;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    text-align: center;
    max-width: fit-content;
    width: fit-content;
}

.upload-label {
    display: inline-block;
    padding: 12px 25px;
    background-color: #007BFF;
    color: white;
    font-size: 18px;
    cursor: pointer;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

.upload-label:hover {
    background-color: #0056b3;
}

input[type="file"] {
    display: none; /* Hide the default file input */
}

.preview-container {
    margin-top: 20px;
}

#image-preview {
    max-width: 400px;

    max-height: 500px;
    border-radius: 5px;
    object-fit: cover;
}

.hidden {
    display: none;
}
/* image upload modal */
/* MODAL */
</style>
    <!-- SIDEBAR -->
    <section id="sidebar">
        <a href="" class="brand">
            <i class="bx bxs-smile"></i>
            <span class="text">AdminHub</span>
        </a>
        <ul class="side-menu top">
            <li>
                <a href="accounts">
                    <i class="bx bxs-dashboard"></i>
                    <span class="text">Customers</span>
                </a>
            </li>
            <li class="active">
                <a href="products">
                    <i class='bx bxs-shopping-bag-alt'></i>
                    <span class="text">My Product</span>
                </a>
            </li>
            <li>
                <a href="">
                    <i class='bx bxs-bar-chart-alt-2' ></i>
                    <span class="text">Analytics</span>
                </a>
            </li>
            <li>
                <a href="">
                    <i class='bx bxs-chat' ></i>
                    <span class="text">Message</span>
                </a>
            </li>
            <li>
                <a href="">
                    <i class='bx bxs-group' ></i>
                    <span class="text">Team</span>
                </a>
            </li>
            <li>
                <a href="">
                    <i class='bx bxs-cog' ></i>
                    <span class="text">Setting</span>
                </a>
            </li>
            <li>
                <a href="">
                    <i class='bx bx-log-in' ></i>
                    <span class="text">Log Out</span>
                </a>
            </li>
        </ul>
    </section>
    <!-- SIDEBAR -->

    <!-- CONTENT -->
	<section id="content">
        <!-- NAVBAR -->
		<nav>
			<i class='bx bx-menu' ></i>
			<a href="#" class="nav-link">Acounts</a>
			<form action="#">
				<div class="form-input">
					<input type="search" placeholder="Search...">
					<button type="submit" class="search-btn"><i class='bx bx-search' ></i></button>
				</div>
			</form>
			<input type="checkbox" id="switch-mode" hidden>
			<label for="switch-mode" class="switch-mode"></label>
			<a href="#" class="notification">
				<i class='bx bxs-bell' ></i>
				<span class="num">8</span>
			</a>
			<a href="#" class="profile">
				<img src="img/people.png">
			</a>
		</nav>
		<!-- NAVBAR -->
        <main>
            <div class="head-title">
				<div class="left">
					<h1>Product</h1>
					<ul class="breadcrumb">
						<li>
							<a href="#">Dashboard</a>
						</li>
						<li><i class='bx bx-chevron-right' ></i></li>
						<li>
							<a class="active" href="#">Store Product</a>
						</li>
					</ul>
				</div>
				<a href="#" class="btn-download">
					<i class='bx bxs-cloud-download' ></i>
					<span class="text">Download PDF</span>
				</a>
			</div>
            <div class="table-data">
				<div class="order">
					<div class="head">
						<h3>Recent products</h3>
                        <a href="#" class="btn-download" id="btn-add">
                            <i class='bx bx-plus-circle' ></i>
                            <span class="text">Item</span>
                        </a>
                        <a href="#" class="btn-download" id="btn-add-category">
                            <i class='bx bx-plus-circle' ></i>
                            <span class="text">Category</span>
                        </a>
                        <a href="#" class="btn-download" id="btn-add-category">
                            <i class='bx bx-plus-circle' ></i>
                            <span class="text">Supplier</span>
                        </a>
						<i class='bx bx-search' ></i>
						<i class='bx bx-filter' ></i>
					</div>
					<table id="table-product">
						<thead>
							<tr>
								<th>ID</th>
                                <th>Image_URL</th>
                                <th>CategoryID</th>
								<th>SupplierID</th>
                                <th>PName</th>
								<th>Price</th>
                                <th>Pdescription</th>
                                <th>Stock</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${prod}" var="prod" varStatus="STT" >
								<tr>
	                                <td>${prod.productId}</td>
									<c:if test="${prod.image.substring(0,5) == 'https' }">
										<c:url value="${prod.image}" var="imgUrl"></c:url>
									</c:if>
									<c:if test="${prod.image.substring(0,5) != 'https' }">
										<c:url value="/image?fname=${prod.image}" var="imgUrl"></c:url>
									</c:if>
									<td><img height="100" width="100" src="${imgUrl}" /></td>
									<td>${prod.categoryID }</td>
									<td>${prod.supplierid}</td>
	                                <td>${prod.pname }</td>
	                                <%-- <td>${list.DoB }</td> --%>
	                                <td>${prod.price }</td>
	                                <td>${prod.description }</td>
	                                <td>${prod.stock }</td>
	                                <td>
	                                    <i class='bx bx-edit' id="btn-edit"></i>
	                                    <i class='bx bx-x-circle'></i>
	                                </td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
        </main>
        <!-- <-- The Modal -->
    <div id="myModal-add" class="modal">
        <!-- Modal content -->
        <div class="modal-content">
        <span class="close-add">&times;</span>
        <div class="left">
            <div class="left-modal">
            <h2>Thêm sản phẩm</h2>
                <form action="" class="form-fill-info" method="POST">
                    <div class="info-product">
                        <span>Tên Sản Phẩm</span>
                        <input type="text" placeholder="VD: Gundam RX79" name="productName" required>
                    </div>
                    <div class="info-product">
                        <span>Giá thành</span>
                        <input type="text" placeholder="Nhập giá" name="productPrice" required>
                    </div>
                    <div class="info-product">
                        <span>Số lượng</span>
                        <input type="text" placeholder="Nhập số lượng" name="productAmount" required>
                    </div>
                    <div class="info-product">
                        <span>Loại</span>
                        <select name="productCategory" id="productCategory">
                            <option value="mg">MG</option>
                            <option value="fullmechanics">Full Mechanics</option>
                            <option value="rg">RG</option>
                        </select>
                    </div>
                    <div class="btn-confirm-info">
                        <input type="submit" value="Add">
                    </div>
                </form>
            </div>
            <div class="right-modal">
                <div class="upload-container">
                    <label for="image-upload" class="upload-label">
                        <span>Upload Image</span>
                        <input type="file" id="image-upload" name="image" accept="image/*">
                    </label>
                    <div class="preview-container">
                        <img id="image-preview" src="" alt="Image preview" class="hidden">
                    </div>
                </div>
            </div>
        </div>
        </div>
    </div>
    <div id="myModal-add-category" class="modal">
        <!-- Modal content -->
        <div class="modal-content-category">
        <span class="close-category">&times;</span>
            <div class="left-modal-category">
            <h2>Thêm Category</h2>
                <form action="" class="form-fill-info" method="POST">
                    <div class="info-product">
                        <span>Tên Category</span>
                        <input type="text" placeholder="VD: Real Grade - RG" name="productName" required>
                    </div>
                    <div class="btn-confirm-info">
                        <input type="submit" value="Add">
                    </div>
                </form>
            </div>
    </div>
    </div>
    </section>
	<!-- CONTENT -->







    <script>
        console.log("Table 1");
        let table_product = document.getElementById("table-product");
        async function loadProductAdmin() {
    
            console.log("Product run");
            const response = await fetch("../html/test.json");
            const products = await response.json();
            console.log("Product:", products);
            // Create a tbody element once
            const tbody = document.createElement('tbody');
        
            // Loop through the products and create rows
            products.forEach(function(product) {
                console.log("Product:", product);
        
                const tr = document.createElement('tr');
        
                // Create and populate the cells for each product
                const tdId = document.createElement('td');
                tdId.textContent = product.productId;
        
                const tdImage = document.createElement('td');
                const cardImg = document.createElement('img');
                cardImg.src = product.productImage;
                cardImg.alt = '';
                tdImage.appendChild(cardImg);
        
                const tdName = document.createElement('td');
                tdName.textContent = product.productName;
        
                const tdType = document.createElement('td');
                tdType.innerHTML = `<span class="type ${product.productCategoryName}">${product.productCategoryName}</span>`;
        
                const tdPrice = document.createElement('td');
                tdPrice.textContent = product.productPrice;
        
                const tdAmount = document.createElement('td');
                tdAmount.textContent = product.productAmount;
        
                const tdRating = document.createElement('td');
                tdRating.textContent = product.avgRating;
        
                const tdAction = document.createElement('td');
                tdAction.innerHTML = `<i class='bx bx-edit' id="btn-edit"></i><i class='bx bx-x-circle'></i>`;
        
                // Append all cells to the row
                tr.appendChild(tdId);
                tr.appendChild(tdImage);
                tr.appendChild(tdName);
                tr.appendChild(tdType);
                tr.appendChild(tdPrice);
                tr.appendChild(tdAmount);
                tr.appendChild(tdRating);
                tr.appendChild(tdAction);
        
                // Append the row to the tbody
                tbody.appendChild(tr);
            });
        
            // Once all rows are appended, append tbody to the table
            table_product.appendChild(tbody);
        }
        
        // Call the function to load the product data
        loadProductAdmin();
        const allSlideMenu = document.querySelectorAll('#sidebar .side-menu.top li a')
        allSlideMenu.forEach(item => {
            const li = item.parentElement;
            item.addEventListener('click', () => {
                allSlideMenu.forEach(item => {
                    item.parentElement.classList.remove('active')
                })
                li.classList.add('active')
            })
        })

        // TOGGLE SIDEBAR
        const menuBar = document.querySelector('#content nav .bx.bx-menu');
        const sidebar = document.getElementById('sidebar');

        menuBar.addEventListener('click', function () {
            sidebar.classList.toggle('hide');
        })


        // Get the modal
        var modal_add = document.getElementById("myModal-add");


        // Get the button that opens the modal
        var btn_add = document.getElementById("btn-add");


        // Get the <span> element that closes the modal
        var span_add = document.getElementsByClassName("close-add")[0];


        // When the user clicks the button, open the modal 
        btn_add.onclick = function() {
            modal_add.style.display = "block";
        }

        // When the user clicks on <span> (x), close the modal
        span_add.onclick = function() {
            modal_add.style.display = "none";
        }

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == modal_add) {
                modal_add.style.display = "none";
            }
        }

        // Get the modal
        var modal_add_category = document.getElementById("myModal-add-category");


        // Get the button that opens the modal
        var btn_add_category = document.getElementById("btn-add-category");


        // Get the <span> element that closes the modal
        var span_add_category = document.getElementsByClassName("close-category")[0];


        // When the user clicks the button, open the modal 
        btn_add_category.onclick = function() {
            modal_add_category.style.display = "block";
        }

        // When the user clicks on <span> (x), close the modal
        span_add_category.onclick = function() {
            modal_add_category.style.display = "none";
        }

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == modal_add) {
                modal_add_category.style.display = "none";
            }
        }


        document.getElementById("image-upload").addEventListener("change", function (event) {
            const file = event.target.files[0];
            const preview = document.getElementById("image-preview");
        
            if (file) {
                const reader = new FileReader();
                reader.onload = function (e) {
                    preview.src = e.target.result;
                    preview.classList.remove("hidden");
                };
                reader.readAsDataURL(file);
            } else {
                preview.classList.add("hidden");
            }
        });

        console.log("Table 2");


    </script>
</body>
</html>