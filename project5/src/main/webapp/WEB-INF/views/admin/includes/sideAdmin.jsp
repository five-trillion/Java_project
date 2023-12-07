<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<aside id="sidebar" class="sidebar">

		<ul class="sidebar-nav" id="sidebar-nav">
			<!-- End Dashboard Nav -->
			<li class="nav-item">
				<a class="nav-link collapsed"
				data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-menu-button-wide"></i><span>주문 관리</span><i
					class="bi bi-chevron-down ms-auto"></i>
				</a>
				<ul id="components-nav" class="nav-content collapse "
					data-bs-parent="#sidebar-nav">
					<li><a href="#"> <i
							class="bi bi-circle"></i><span>미처리 조회</span>
					</a></li>
					<li><a href="#"> <i
							class="bi bi-circle"></i><span>주문 완료 조회</span>
					</a></li>
				</ul></li>
			<!-- End Components Nav -->

			<li class="nav-item">
				<a class="nav-link collapsed"
				data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-journal-text"></i><span>상품 관리</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="forms-nav" class="nav-content collapse "
					data-bs-parent="#sidebar-nav">
					<li><a href="adminProdInsert"> <i class="bi bi-circle"></i><span>상품 등록</span>
					</a></li>
					<li><a href="adminProdList"> <i class="bi bi-circle"></i><span>상품 목록</span>
					</a></li>
					<li><a href="#"> <i class="bi bi-circle"></i><span>상품 삭제</span>
					</a></li>
				</ul></li>
			<!-- End Forms Nav -->

			<li class="nav-item">
				<a class="nav-link collapsed"
					data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
						<i class="bi bi-person"></i><span>회원 관리</span><i
						class="bi bi-chevron-down ms-auto"></i>
				</a>
				<ul id="tables-nav" class="nav-content collapse "
					data-bs-parent="#sidebar-nav">
					<li><a href="adminUserManage"> <i class="bi bi-circle"></i><span>조회</span>
					</a></li>
				</ul></li>
			<!-- End Tables Nav -->

			<li class="nav-item">
				<a class="nav-link collapsed"
					data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
						<i class="bi bi-bar-chart"></i><span>게시판 관리</span><i
						class="bi bi-chevron-down ms-auto"></i>
				</a>
				<ul id="charts-nav" class="nav-content collapse "
					data-bs-parent="#sidebar-nav">
					<li><a href="adminBoardNoti"> <i class="bi bi-circle"></i><span>공지</span>
					</a></li>
					<li><a href="adminBoardFree"> <i
							class="bi bi-circle"></i><span>자유</span>
					</a></li>
					<li><a href="adminBoardQna"> <i class="bi bi-circle"></i><span>질의</span>
					</a></li>
					<li><a href="adminBoardReport"> <i class="bi bi-circle"></i><span>신고 관리</span>
					</a></li>
				</ul></li>
			<!-- End Charts Nav -->

			<li class="nav-item">
				<a class="nav-link collapsed"
					data-bs-target="#icons-nav" data-bs-toggle="collapse" href="#">
						<i class="bi bi-gem"></i><span>정산</span><i
						class="bi bi-chevron-down ms-auto"></i>
				</a>
				<ul id="icons-nav" class="nav-content collapse "
					data-bs-parent="#sidebar-nav">
					<li><a href="#"> <i
							class="bi bi-circle"></i><span>매출 관리</span>
					</a></li>
					<li><a href="#"> <i class="bi bi-circle"></i><span>방문자</span>
					</a></li>
					<li><a href="#"> <i class="bi bi-circle"></i><span>가입자</span>
					</a></li>
				</ul></li>
			<!-- End Icons Nav -->

		</ul>

	</aside>
	<!-- End Sidebar-->