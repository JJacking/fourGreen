<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>경매상품 1</title>
</head>
<body>
<form action="" method="POST" enctype="multipart/form-data">
	<div>
		<div>
			<h6><a href="">홈</a></h6>
			<h6><a href=""> > </a></h6>
			<h6><a href="">메뉴 1</a></h6>
			<h6><a href=""> > </a></h6>
			<h6><a href="">카테고리 1</a></h6>
		</div>
		<h4>주황색 공중 전화기</h4>
	</div>
	
	<hr>
	<div>
		<!-- 대표사진  -->
		<input type="image" name="file">
		<!-- 업로드 된 사진  -->
		<input type="image" multiple="multiple" name="files">
		
		<table>
			<tr>
				<th>경매기간</th>
				<td></td>
			</tr>
			<tr>
				<th>연장경매</th>
				<td></td>
			</tr>
			<tr>
				<th>시작가</th>
				<td></td>
			</tr>
			<tr>
				<th>입찰 단위</th>
				<td></td>
			</tr>
			<tr>
				<th>즉시구매</th>
				<td></td>
			</tr>
			<tr>
				<th>입찰 수</th>
				<td></td>
			</tr>
		</table>
		
		<tbody>
			<p>배송방법</p>
			<p>배송비용</p>
			<p>묶음배송</p>
		</tbody>
		
		<tbody>
			<p>원산지</p>
		</tbody>
		
		<table>
			<p>판매자 ID</p>
			<p>판매자 신용도</p>
			<p>판매자 다른 물건</p>
			<p>판매자 구매후기</p>
		</table>
		
		<button type="submit">입찰하기</button>
		<button type="submit">관심물품</button>
		<button type="submit">문의하기</button>
	</div>
	
	<div>
		<ul>
			<li>
				<a>물품정보</a>
			</li>
			<li>
				<a>물품문의</a>
			</li>
			<li>
				<a>배송/반품</a>
			</li>
			<li>
				<a>영수증 발행</a>
			</li>
		</ul>
	</div>
	<p>
		<input type="text">
	</p>
	<input type="image">
	
	
</form>
</body>
</html>