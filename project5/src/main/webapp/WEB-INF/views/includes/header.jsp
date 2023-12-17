<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
	
	<!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    
	<!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="/"><img src="${contextPath}/resources/shop/img/murmur.png" alt=""></a>
        </div>
        <div class="humberger__menu__cart">
            <ul>
                <li>
               		<c:if test = "${user == null}">
               			<a href="/shop/login" data-toggle="modal" data-target="#loginModal"><i class="fa fa-shopping-bag"></i></a>
               		</c:if>
               		<c:if test = "${user != null }">
               			<c:choose>
               				<c:when test="${cart.isEmpty()}">
               					<a href="/cart/${user.userNo}"><i class="fa fa-shopping-bag"></i></a>
               				</c:when>
               				<c:otherwise>
               					<a href="/cart/${user.userNo}"><i class="fa fa-shopping-bag"></i><span><c:out value="${fn:length(cart)}"/></span></a>
               				</c:otherwise>
               			</c:choose>
               		</c:if>
               	</li>
            </ul>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul class="featured__controls">
                <li class="active"><a href="../">Home</a></li>
                <li><a href="/shop" class="shop-btn">Shop</a></li>
                <li><a href="/board/notice">Community</a>
                	<ul class="header__menu__dropdown">
                        <li><a href="/board/notice">Notice</a></li>
                        <li><a href="/board/qna">QnA</a></li>
                        <li><a href="#">Review</a></li>
                        <li><a href="/board/lounge">Lounge</a></li>
                    </ul>
                </li>
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
                <div class="col-lg-4">
                    <div class="header__cart">
                        <ul>
                        	<li>
                        		<c:if test = "${user == null}">
                        			<a data-toggle="modal" data-target="#loginModal"><i class="fa fa-shopping-bag"></i></a>
                        		</c:if>
                        		<c:if test = "${user != null }">
                        			<c:choose>
			               				<c:when test="${cart.isEmpty()}">
			               					<a href="/cart/${user.userNo}"><i class="fa fa-shopping-bag"></i></a>
			               				</c:when>
			               				<c:otherwise>
			               					<a href="/cart/${user.userNo}"><i class="fa fa-shopping-bag"></i><span><c:out value="${fn:length(cart)}"/></span></a>
			               				</c:otherwise>
			               			</c:choose>
                        		</c:if>
                        	</li>
                        	&nbsp;
	<!-- login Modal -->
	<div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="loginModalLabel">알림</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        장바구니를 보시려면 먼저 로그인해주세요.
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	        <button id="loginbtn" name="loginbtn" type="submit" class="btn btn-primary">Login</button>
	      </div>
	    </div>
	  </div>
	</div>
	
	<script>
 	$("#loginbtn").on("click",function() {
 		self.location="/shop/login";
 	}); 
 	</script>
                            <li>
                            	<c:if test = "${user == null}">
                            		
									<div class="header__top__right__auth">
	                            		<a href="/shop/login"><i class="fa fa-user"></i>Login</a>
	                            	</div>
                            	</c:if>
								<c:if test = "${user != null}">
                            		 <c:if test = "${user.admin == 1}"> 
		                            	<div class="header__top__right">
				                            <div class="header__top__right__auth">
	                            				<a href="/mypage"><i class="fa fa-user"></i>Mypage</a>
	                            			</div>
	                            			&nbsp;
				                            <div class="header__top__right__auth">
				                            	<a href="/shop/logout" id="logoutBtn">Logout</a>
				                            </div>

				                       	</div>
	                            	</c:if>
                            		<c:if test = "${user.admin == 0}">
                            			<div class="header__top__right">
                            				<div class="header__top__right__auth">
				                            	<a href="/admin/adminHome" id="logoutBtn">admin</a>
				                            </div>
				                            &nbsp;
				                            <div class="header__top__right__auth">
				                            	<a href="/shop/logout" id="logoutBtn">Logout</a>
				                            </div>

                            			</div>
                            		</c:if> 
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
                            <li><a href="/shop/brand?b=nc">네츄럴코어</a></li>
                            <li><a href="/shop/brand?b=dk">달링키친</a></li>
                            <li><a href="/shop/brand?b=lo">로투스</a></li>
                            <li><a href="/shop/brand?b=bp">벅스펫</a></li>
                            <li><a href="/shop/brand?b=it">ITI</a></li>
                            <li><a href="/shop/brand?b=jf">조피쉬</a></li>
                            <li><a href="/shop/brand?b=an">애니먼</a></li>
                            <li><a href="/shop/brand?b=ae">애니멀에센셜</a></li>
                            <li><a href="/shop/brand?b=nf">뉴플렉스</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-5">
                    <nav class="header__menu">

                        <ul class="featured__controls">
                            <li><a href="../" class="active">Home</a></li>
                            <li class="shop-btn"><a href="/shop">Shop</a>
								<ul class="header__menu__dropdown">
                                    <li><a href="/shop/category?c=fe">사료</a></li>
                                    <li><a href="/shop/category?c=sn">간식</a></li>
                                    <li><a href="/shop/category?c=nu">영양제</a></li>
                                </ul>
                            </li>
                            <li><a href="/board/notice">community</a>
                            	<ul class="header__menu__dropdown">
                                    <li><a href="/board/notice">공지사항</a></li>
                                    <li><a href="/board/qna">QnA</a></li>
                                    <li><a href="/board/review">Review</a></li>
                                    <li><a href="/board/lounge">자유게시판</a></li>
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