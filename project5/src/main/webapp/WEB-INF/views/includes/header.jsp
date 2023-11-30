<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	<!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    
	<!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="../"><img src="${contextPath}/resources/shop/img/murmur.png" alt=""></a>
        </div>
        <div class="humberger__menu__cart">
            <ul>
                <li><a href="/shop/cart"><i class="fa fa-shopping-bag"></i> <span>0<!-- 장바구니의 상품 개수 --></span></a></li>
            </ul>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li class="active"><a href="../">Home</a></li>
                <li><a href="/shop/list">Shop</a></li>
                <li><a href="#">Community</a>
                	<ul class="header__menu__dropdown">
                        <li><a href="#">Notice</a></li>
                        <li><a href="#">QnA</a></li>
                        <li><a href="#">Review</a></li>
                        <li><a href="#">Lounge</a></li>
                    </ul>
                </li>
                <li><a href="#">참고</a>
                    <ul class="header__menu__dropdown">
                        <li><a href="./shop-details.html">Shop Details</a></li>
                        <li><a href="./checkout.html">Check Out</a></li>
                        <li><a href="./blog-details.html">Blog Details</a></li>
                    </ul>
                </li>
                
                <li><a href="./contact.html">Contact</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        
    </div>
    <!-- Humberger End -->

    <!-- Header Section Begin -->
    <header class="header">
        
        <div class="container">
            <div class="row">
            	<div class="col-lg-4"></div>
                <div class="col-lg-4">
                    <div class="header__logo">
                        <a href="../"><img src="${contextPath}/resources/shop/img/murmur.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-1"></div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                            <li><a href="/shop/cart"><i class="fa fa-shopping-bag"></i> <span>0<!-- 장바구니의 상품 개수 --></span></a></li>
                            <li></li>
                            <li>
                            	<c:if test="${empty loginUser}">
	                            	<div class="header__top__right__auth">
	                            		<a href="/shop/login"><i class="fa fa-user"></i>Login</a>
	                            	</div>
                            	</c:if>
                            	<c:if test="${!empty loginUser}">
	                            	<div class="header__top__right">
			                            <ul>
			                                <li><a href="/shop/mypage"><i class="fa fa-user"></i>Mypage</a></li>
			                                <li><a href="#">Logout</a></li>
			                            </ul>
			                        </div>
                            	</c:if>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
            	<div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>All Brands</span>
                        </div>
                        <ul>
                            <li><a href="#">네츄럴코어</a></li>
                            <li><a href="#">달링키친</a></li>
                            <li><a href="#">로투스</a></li>
                            <li><a href="#">벅스펫</a></li>
                            <li><a href="#">ITI</a></li>
                            <li><a href="#">조피쉬</a></li>
                            <li><a href="#">애니먼</a></li>
                            <li><a href="#">애니멀에센셜</a></li>
                            <li><a href="#">뉴플렉스</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-5">
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><a href="../">Home</a></li>
                            <li><a href="/shop/list">Shop</a>
                            	<ul class="header__menu__dropdown">
                                    <li><a href="#">사료</a></li>
                                    <li><a href="#">간식</a></li>
                                    <li><a href="#">영양제</a></li>
                                </ul>
                            </li>
                            <li><a href="#">community</a>
                            	<ul class="header__menu__dropdown">
                                    <li><a href="#">Notice</a></li>
                                    <li><a href="#">QnA</a></li>
                                    <li><a href="#">Review</a></li>
                                    <li><a href="#">Lounge</a></li>
                                </ul>
                            </li>
                            <li><a href="#">참고</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="./shop-details.html">Shop Details</a></li>
                                    <li><a href="./checkout.html">Check Out</a></li>
                                    <li><a href="./blog-details.html">Blog Details</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-4">
                	<div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
                                
                                <input type="text" placeholder="What do yo u need?">
                                <button type="submit" class="site-btn">SEARCH</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
            
        </div>
    </header>
    <!-- Header Section End -->