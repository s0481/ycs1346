<%@ page contentType="text/html; charset=utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			<c:forEach var="article" items="${ articleList }"> 
				<c:choose>
					<c:when test = "${ article.bcategory == 1 }">
						<c:set var="bcategoryKR" value="영어" />
					</c:when>
					<c:when test = "${ article.bcategory == 2 }">
						<c:set var="bcategoryKR" value="외국어" />
					</c:when>
					<c:when test = "${ article.bcategory == 3 }">
						<c:set var="bcategoryKR" value="취업" />
					</c:when>
					<c:when test = "${ article.bcategory == 4 }">
						<c:set var="bcategoryKR" value="국가고시&공무원" />
					</c:when>
					<c:when test = "${ article.bcategory == 5 }">
						<c:set var="bcategoryKR" value="기타" />
					</c:when>
				</c:choose>
			<!-- item -->
			<li class="result_item">
				<a href="./groupPage.do?num=${ article.num }&pageNum=${ currentPage }" class="item">
					<figure>
						<span class="item_category">${ bcategoryKR }&lt;${ article.scategory }</span>
						<img src="./${ article.imgpath }" />
						<figcaption class="item_description">
							<p>
								<span class="item_title">${ article.title }</span>
								<span class="item_status label label-primary">${ article.status }</span>
								<c:if test="${ article.recommendcount >= 20 }">
									<span class="item_label label label-danger">HOT</span>
								</c:if>
								<span class="item_introduce"> - ${ article.introduce } </span>
							</p>
							<p>
								<span class="item_host">${ article.host }</span> | <span class="item_date">${ article.duedate }</span>
							</p>
						</figcaption>
						<div class="item_entry">
							<span class="entry_number">${ article.currentnum }</span> / <span class="entry_total">${ article.total }</span> 명
						</div>
					</figure>
				</a>
			</li>
			<!-- //item -->
			</c:forEach>