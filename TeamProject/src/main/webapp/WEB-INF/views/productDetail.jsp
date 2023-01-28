<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세보기 - ${product.title}</title>
</head>
<body>
<form action="Biding" method="POST" onsubmit="return check()">
<input type="hidden" name="id" value="test@gmail.com">
<input type="hidden" name="idx" value="${product.num }">
	<div>
		<div>
			<h6><a href="/index.html">홈</a></h6>
			<h6> > </h6>
			<h6><a href="${pageContext.request.contextPath }">메뉴 1</a></h6>
			<h6> > </h6>
			<h6><a href="${pageContext.request.contextPath }/?category=${product.category}">${product.category}</a></h6>
		</div>
		<h4>${product.title }</h4>
	</div>
	<hr>
	<div>
	
	<div id="image">
		<!-- 대표사진  -->
		 <c:choose>
			<c:when test="${empty product.productPic}">
				<img src="/auction/noimage.jpg">
			</c:when>
			<c:otherwise>
				<script type="text/javascript">
					let image = document.getElementById('image');
					//01_python.jpg,02_android.jpg,03_nodejs.jpg,,
					let arr = '${product.productPic}'.split(',');
					
					for(let s = 0 ;s< arr.length;s++){
						if(arr[s] != ''){
							let img = (document.createElement('img'));
							img.setAttribute('src','/auction/'+arr[s]);
							img.setAttribute('style','width:100px; height:100px;');
							image.appendChild(img);
						}
					}
				</script>
			</c:otherwise>
		</c:choose>
	</div>
		<hr>
		
		<table>
			<tr>
				<th>경매기간</th>
				<td>
					${product.writeDate}
					<p>~</p>
					${product.regdate}
				</td>
			</tr>
			<tr>
				<th>연장경매</th>
				<td></td>
			</tr>
			<tr>
				<th>경매가</th>
				<td>${product.strPrice}
					<input type="hidden" name="strPrice" id="strPrice" value="${product.strPrice}">
				</td>
			</tr>
			<tr>
				<th>입찰 단위</th>
				<td>${product.bidUnit}
					<input type="hidden" name="bidUnit" id="bidUnit">
				</td>
			</tr>
			<tr>
				<th>즉시구매</th>
				<td>${product.dirPrice}</td>
			</tr>
			<tr>
				<th>입찰 수</th>
				<td>${product.bidCount}</td>
			</tr>
			<tr>
				<th>조회 수</th>
				<td>${product.readCount}</td>
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
		
		<table>
			<tr>
				<th>입찰자</th>
				<td>  </td>
			</tr>
			<tr>
				<th>입찰금액</th>
				<td> ${product.strPrice} </td>
			</tr>
			<tr>
				<th>입찰시간</th>
				<td> ${biding.bidTime} </td>
			</tr>
		</table>
		<button type="submit" id="btn1" class="btn">입찰하기</button>
		<button type="button" class="btn" onclick="location.href='one?dirPrice=${product.num}'">바로 구매하기</button>
		<button type="button" class="btn" onclick="location.href='??'">관심물품</button>
		<button type="button" class="btn" onclick="location.href='??'">문의하기</button>
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
	<input type="image">
	
	<p><a href="deleteProduct?num=${product.num}">경매 삭제하기</a></p>
	<button type="button" onclick="location.href='/TeamProject'">목록보기</button>

</form>
<script type="text/javascript">
	

	function check(){
		let strPrice = parseInt(document.getElementById('strPrice').value);
		let bidUnit = parseInt(document.getElementById('bidUnit').value);
		alert(strPrice);
		
		if(100000000 <= strPrice){
			bidUnit = 5000000;
		}else if(50000000 <= strPrice < 100000000){
			bidUnit = 1000000;
		}else if(10000000 <= strPrice < 50000000){
			bidUnit = 500000;
		}else if(5000000 <= strPrice < 10000000){
			bidUnit = 500000;
		}else if(1000000 <= strPrice < 5000000){
			bidUnit = 100000;
		}else if(100000 <= strPrice < 1000000){
			bidUnit = 50000;
		}else if(10000 <= strPrice < 100000){
			bidUnit = 10000;
		}else if(strPrice < 10000){
			bidUnit = 5000;
		}
		
		let flag = confirm(strPrice+bidUnit+'원에 정말 입찰하시겠습니까?');
		if(!flag){
			document.getElementById('strPrice').setAttribute('value',strPrice+bidUnit);
			return false;
		}
	}
	
</script>
<!-- 남은시간 표시 -->
		<script type="text/javascript">
		
				const body = document.querySelector("body");
				const timer = document.createElement("h3");
				const title = document.createElement("h3");
				body.prepend(timer);
				body.prepend(title);
				let gap;
				function getTime() {
					let target = new Date('${product.regdate}');
					let today = new Date();
					gap = target - today;
					let d = Math.floor(gap / (1000 * 60 * 60 * 24)); // 일
					let h = Math.floor((gap / (1000 * 60 * 60)) % 24); // 시
				 	let m = Math.floor((gap / (1000 * 60)) % 60); // 분
				  	let s = Math.floor((gap / 1000) % 60); // 초
				  	if (gap <= 0) {
					    title.innerText = "경매가 마감되었습니다.";
					    timer.innerText = "";
					    document.getElementsByClassName('btn')[0].setAttribute('style','display:none');
					    document.getElementsByClassName('btn')[1].setAttribute('style','display:none');
					    document.getElementsByClassName('btn')[2].setAttribute('style','display:none');
				  	} else {
				    	title.innerText = "마감까지";
				    	timer.innerText = d+"일 "+h+"시간 "+m+"분 "+s+"초 남았습니다.";
				  	}
				}
				function gapT(){
					
				}

				function init() {
				  getTime();
				  setInterval(getTime, 1000);
				}
				init();
		</script>
</body>
</html>