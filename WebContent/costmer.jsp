<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="board.BoardDBBean"%>
<%@ page import="board.BoardDataBean"%>
<%@ page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ include file="color.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>StudyMate :: 맞춤형 스터디 솔루션. 스터디메이트에 오신것을 환영합니다.</title>

<!-- 모바일 웹 페이지 설정 -->
<link rel="shortcut icon" href="assets/ico/favicon.png" />
<link rel="apple-touch-icon-precomposed"
	href="assets/ico/apple-touch-icon-144-precomposed.png" />

<!-- bootstrap -->
<link rel="stylesheet" type="text/css"
	href="assets/css/bootstrap.min.css" />

<!-- 나눔고딕 웹 폰트 적용 -->
<link rel="stylesheet" type="text/css" href="assets/css/nanumfont.css" />

<!-- 반응형 웹을 지원하지 않을 경우 -->
<!-- <link rel="stylesheet" href="assets/css/non-responsive.css" /> -->

<!-- IE8 이하 버전 지원 -->
<!--[if lt IE 9]>
		<script type="text/javascript" src="assets/js/html5shiv.js"></script>
		<script type="text/javascript" src="assets/js/respond.min.js"></script>
		<![endif]-->

<!-- IE10 반응형 웹 버그 보완 -->
<!--[if gt IE 9]>
		<link rel="stylesheet" type="text/css" href="assets/css/ie10.css" />
		<script type="text/javascript" src="assets/js/ie10.js"></script>
		<![endif]-->
<style type="text/css">
body {
	/** 메뉴바의 자리가 없어졌으므로, 상단 여백을 제거 */
	/** padding-top: 50px; */
	padding-bottom: 20px;
}

.carousel {
	height: 500px;
	margin-bottom: 60px;
}

.carousel-inner>.item>img {
	min-width: 100%;
	height: 500px;
}

.carousel-inner .carousel-caption {
	padding-left: 30px;
	padding-right: 30px;
	background-color: rgba(0, 0, 0, 0.5) !important;
}

/** 캐러셀의 반응형 기능 */
@media ( min-width : 768px) {
	.carousel-caption p {
		margin-bottom: 20px;
		font-size: 21px;
		line-height: 1.4;
	}
}

/* 떠 있는 메뉴바
			 -------------------------------------------------- */
/** 떠 있는 영역 */
.navbar-wrapper {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	z-index: 20;
}

/** 메뉴바 안의 컨테이너 좌우 여백 제거 */
.navbar-wrapper .container {
	padding-left: 0;
	padding-right: 0;
}

/** 메뉴바 자체의 좌우 여백 조절 */
.navbar-wrapper .navbar {
	padding-left: 15px;
	padding-right: 15px;
}

.navbar-collapse {
	background-color: none !important;
}

/** 떠 있는 메뉴바의 반응형 기능 */
@media ( min-width : 768px) {
	.navbar-wrapper {
		margin-top: 5px;
	}
	.navbar-wrapper .container { 
		padding-left: 15px;
		padding-right: 15px;
	}
	.navbar-wrapper .navbar {
		padding-left: 0;
		padding-right: 0;
	}
	.navbar-wrapper .navbar {
		border-radius: 4px;
	}
	.navbar-wrapper .navbar-right {
		margin-right: 20px !important;
	}
}

/* 상세 내용 영역
			 ------------------------- */
/** hr 태그에 대한 상하 여백 확보 */
.featurette-divider {
	margin: 80px 0;
}

/** 제목 텍스트 모양 */
.featurette-heading {
	font-weight: bold;
	line-height: 1;
	letter-spacing: -1px;
}

/** 상세 내용영역의 반응형 기능 >> 제목의 글자 크기 재설정 */
@media ( min-width : 768px) {
	.featurette-heading {
		font-size: 50px;
	}
}

@media ( min-width : 992px) {
	.featurette-heading {
		margin-top: 120px;
	}
}
</style>
</head>

<body>
	<div class="navbar-wrapper">
		<div class="container">
			<!-- 메뉴바 -->
			<div class="navbar navbar-inverse navbar-static-top"
				role="navigation">
				<!-- 배경을 제외한 메뉴 항목의 영역 제한 -->
				<div class="container">
					<!-- 로고 영역 -->
					<div class="navbar-header">
						<!-- 반응형 메뉴 버튼 -->
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<!--// 반응형 메뉴 버튼 -->
						<!-- 로고 -->
						<a class="navbar-brand" href="/">StudyMate</a>
						<!--// 로고 -->
					</div>
					<!--// 로고 영역 -->
					<!-- 메뉴 영역 -->
					<div class="navbar-collapse collapse">
						<!-- 메인메뉴 -->
						<ul class="nav navbar-nav navbar-right">
							<li class="active"><a href="#">Home</a></li>
							<li><a href="#">스터디그룹</a></li>
							<li><a href="#">그룹등록</a></li>
							<li><a href="#">로그인</a></li>
							<li><a href="#">메인페이지</a></li>
						</ul>
						<!--// 메인메뉴 -->
						<!-- 로그인(메뉴 우측) -->
						<!-- <form class="navbar-form navbar-right" action="" name="" method="">
								<div class="form-group">
									<input type="text" placeholder="Email" class="form-control">
								</div>
								<div class="form-group">
									<input type="password" placeholder="Password" class="form-control">
								</div>
								<button type="submit" class="btn btn-success">
									Login
								</button>
								<button type="button" class="btn btn-warning">
									Join
								</button>
							</form> -->
						<!--// 로그인(메뉴 우측) -->
					</div>
					<!--// 메뉴 영역 -->
				</div>
				<!--// 배경을 제외한 메뉴 항목의 영역 제한 -->
			</div>
			<!--// 메뉴바 -->
		</div>
	</div>

	<div class="container">
		<ul class="nav nav-tabs" style="padding-top: 80px;">
			<li class="active"><a data-toggle="tab" href="#home">자주 묻는 질문</a></li>
			<li><a data-toggle="tab" href="#menu1">문의/답변 목록</a></li>
			<li><a data-toggle="tab" href="#menu2">문의하기</a></li>
		</ul>

		<div class="tab-content">
			<div id="home" class="tab-pane fade in active">
				<!-- 자주 묻는 질문 -->
				<div class="panel-group" id="accordion">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapse1"> 자주 묻는 질문 1</a>
							</h4>
						</div>
						<div id="collapse1" class="panel-collapse collapse in">
							<div class="panel-body">내용1</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapse2"> 자주 묻는 질문 2</a>
							</h4>
						</div>
						<div id="collapse2" class="panel-collapse collapse">
							<div class="panel-body">내용2</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapse3"> 자주 묻는 질문 3</a>
							</h4>
						</div>
						<div id="collapse3" class="panel-collapse collapse">
							<div class="panel-body">내용3</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapse4"> 자주 묻는 질문 4</a>
							</h4>
						</div>
						<div id="collapse4" class="panel-collapse collapse">
							<div class="panel-body">내용4</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapse5"> 자주 묻는 질문 5</a>
							</h4>
						</div>
						<div id="collapse5" class="panel-collapse collapse">
							<div class="panel-body">내용5</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapse6"> 자주 묻는 질문 6</a>
							</h4>
						</div>
						<div id="collapse6" class="panel-collapse collapse">
							<div class="panel-body">내용6</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapse1"> 자주 묻는 질문 7</a>
							</h4>
						</div>
						<div id="collapse1" class="panel-collapse collapse in">
							<div class="panel-body">내용7</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapse2"> 자주 묻는 질문 8</a>
							</h4>
						</div>
						<div id="collapse2" class="panel-collapse collapse">
							<div class="panel-body">내용8</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapse3"> 자주 묻는 질문 9</a>
							</h4>
						</div>
						<div id="collapse3" class="panel-collapse collapse">
							<div class="panel-body">내용9</div>
						</div>
					</div>
				</div>
			</div>
			<!-- //자주 묻는 질문 끝 -->
			
			<div id="menu1" class="tab-pane fade">


				<%!/* 게시판시작 */
					int pageSize = 10;
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");%>
				<%
					String pageNum = request.getParameter("pageNum");
					if (pageNum == null) {
						pageNum = "1";
					}

					int currentPage = Integer.parseInt(pageNum);
					//System.out.println(currentPage);
					int startRow = (currentPage * 10) - 9;
					int endRow = currentPage * pageSize;
					int count = 0;
					int number = 0;

					List articleList = null;
					BoardDBBean dbPro = BoardDBBean.getInstance();
					count = dbPro.getArticleCount();
					if (count > 0) {
						articleList = dbPro.getArticles(startRow, endRow);
					}

					number = count - (currentPage - 1) * pageSize;
					// 11 -(2-1)*3 =8
				%>



				<center>
					<div class="container">
  <h1>글 목록(전체 글:<%=count%>)</h1>
  <td align="right">
							<a href="writeForm.jsp">글 쓰기</a></td>
</div>
					


					<%
						if (count == 0) {
					%>

<div class="container">
  <h1>게시판에 저장된 글이 없습니다.</h1>

</div>
						

					<%
						} else {
					%>


<div class="container">
  <table class="table">
    <thead>
      <tr>
        <th>번호</th>
        <th>제목</th>
        <th>작성자</th>
        <th>작성일</th>
        <th>조회</th>
        <th>IP</th>
        </tr>
        </div>
        <%
							for (int i = 0; i < articleList.size(); i++) {
									BoardDataBean article = (BoardDataBean) articleList.get(i);
						%>
<tr height="30">
							<td align="center" width="50"><%=number--%></td>
							<td width="250">
								<%
									int wid = 0;
											if (article.getRe_level() > 0) { //답변글이라면...
												wid = 5 * (article.getRe_level());
								%> <img class="costmerimg" src="board/images/level.gif" width="<%=wid%>" height="16">
								<img class="costmerimg" src="board/images/re.gif"> <%
 	} else {
 %> <img class="costmerimg" src="board/images/level.gif" width="<%=wid%>" height="16">
								<%
									}
								%> <a
								href="content.jsp?num=<%=article.getNum()%>&pageNum=<%=currentPage%>">
									<%=article.getSubject()%></a> <%
 	if (article.getReadcount() >= 20) {
 %> <img class="costmerimg" src="board/images/hot.gif" border="0" height="16"> <%
 	}
 %>
							</td>
							<td align="center" width="100"><a
								href="mailto:<%=article.getEmail()%>"><%=article.getWriter()%></a></td>
							<td align="center" width="150"><%=sdf.format(article.getReg_date())%></td>
							<td align="center" width="50"><%=article.getReadcount()%></td>
							<td align="center" width="100"><%=article.getIp()%></td>
						</tr>
						<%
							}
						%>
					</table>
					<%
						}
					%>
					
					<%
						if (count > 0) {
							//전체 페이지의 수를 연산
							int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);

							int startPage = (int) (currentPage / 5) * 5 + 1;
							int pageBlock = 5;
							int endPage = startPage + pageBlock - 1;
							if (endPage > pageCount)
								endPage = pageCount;

							if (startPage > 5) {
					%>
					<a href="board/list.jsp?pageNum=<%=startPage - 5%>">[이전]</a>
					<%
						}
							for (int i = startPage; i <= endPage; i++) {
					%>
					<a href="board/list.jsp?pageNum=<%=i%>">[<%=i%>]
					</a>
					<%
						}
							if (endPage < pageCount) {
					%>
					<a href="board/list.jsp?pageNum=<%=startPage + 5%>">[다음]</a>
					<%
						}
						}
					%>

					<form action="boardList.action" name="search" method="post">

						<select name="keyField" size="1">
							<option value="name"
								<c:if test="${'name'==keyField }"> selected</c:if>>이름</option>
							<option value="title"
								<c:if test="${'title'==keyField }"> selected</c:if>>제목</option>
							<option value="content"
								<c:if test="${'content'==keyField }"> selected</c:if>>
								내용</option>
						</select> <input type="text" size="16" name="keyWord" value="${keyWord }">
						<input type="button" value="검색" onClick="check()"> <input
							type="hidden" name="page" value="0">
						</td>
					</form>
				</center>
				<br>
					
					
    </thead>
    <tbody>
 




















			</div>
			
			<div id="menu2" class="tab-pane fade">
				<!-- 문의하기 -->
				<form>
					<div class="form-group">
						<label for="name">이름:</label> <input type="name" class="form-control" id="name"  style="width: 30%">
					</div>
					<div class="form-group">
						<label for="tel">연락처:</label> <input type="tel" class="form-control" id="tel"  style="width: 30%">
					</div>
					<div class="form-group">
						<label for="email">이메일:</label> <input type="email" class="form-control" id="email"  style="width: 30%">
					</div>

					<div class="form-group">
						<label for="comment">문의하기:</label>
						<textarea class="form-control" rows="5" id="comment" style="width: 50%"></textarea>
					</div>


					<button type="submit" class="btn btn-default">등록</button>
				</form>
				<br>
				<!-- 문의하기 끝 -->
			</div>
			
		</div>
	</div>





	<!--// 내용영역 -->

	<!-- Javascript -->
	<script src="assets/js/jquery-3.1.1.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
</body>
</html>