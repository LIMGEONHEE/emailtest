<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Enum Camping</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
    
    <c:url value="/css/header.css" var="headerCSS"/>
    <link rel="stylesheet" href="${headerCSS}">
    <c:url value="/css/footer.css" var="footerCSS"/>
    <link rel="stylesheet" href="${footerCSS}">
</head>
<body>
<div class="wrapper">
		<%@ include file="./fragments/header.jspf"%>
		<section id="gallery" class="gallery">
			<div class="container-fluid">
				<div id="carouselExampleIndicators"
					class="carousel slide carousel-fade" data-bs-pause="false"
					data-bs-ride="carousel">
					<div class="carousel-indicators">
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="0" class="active" aria-current="true"
							aria-label="Slide 1"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="1" aria-label="Slide 2"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="2" aria-label="Slide 3"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="3" aria-label="Slide 4"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="4" aria-label="Slide 5"></button>
					</div>
					<div class="carousel-inner jua-regular">
						<div class="carousel-item active">
							<img src="images/main/camp1.jpg" class="d-block w-100 "
								alt="Camping site 1 " height=850px;>
							<div class="carousel-caption d-md-black my-5">
								<h1>캠핑장 전경</h1>
							</div>
						</div>
						<div class="carousel-item">
							<img src="images/main/camp2.jpg" class="d-block w-100 "
								alt="Camping site 2" height=850px;>
							<div class="carousel-caption d-md-black my-5">
								<h1>캠핑장 전경2</h1>
							</div>
						</div>
						<div class="carousel-item">
							<img src="images/main/camp3.jpg" class="d-block w-100 "
								alt="Camping site 3" height=850px;>
							<div class="carousel-caption d-md-black my-5">
								<h1>바베큐</h1>
							</div>
						</div>
						<div class="carousel-item">
							<img src="images/main/camp4.jpg" class="d-block w-100 "
								alt="Camping site 4" height=850px;>
							<div class="carousel-caption d-md-black my-5 ">
								<h1>계곡 전경</h1>
							</div>
						</div>
						<div class="carousel-item">
							<img src="images/main/camp5.jpg" class="d-block w-100 "
								alt="Camping site 5" height=850px;>
							<div class="carousel-caption d-md-black my-5">
								<h1>별</h1>
							</div>
						</div>
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
			</div>
		</section>

		<!-- 캠핑장 간단소개 -->
		<section class="content">
			<div
				style="padding-top: 100px; padding-left: 50px; padding-right: 50px">
				<div class="row">
					<div class="col-md-4">
						<img src="images/main/main-camp.jpg"
							style="width: 300px; height: 300px;" alt="Main Camping Image">
					</div>
					<div class="col-md-8 rounded-content jua-regular with-background">
						<h2>자연 속에서의 휴식</h2>
						<p>Enum Camping은 자연 속에서 편안한 휴식을 제공합니다. 넓은 공간과 풍부한 자연 경관이 매력적인
							이 캠핑장에서는 언제든지 편안하게 쉴 수 있습니다.</p>
						<p>산책로, 자전거 도로, 그리고 다양한 야외 활동을 즐길 수 있는 이 캠핑장에서 여러분의 특별한 순간을
							만들어보세요.</p>
						<p>우리 캠핑장은 현대적 시설과 전통적인 캠핑의 매력을 결합하여, 가족, 친구들과 함께 즐길 수 있는 최적의
							환경을 제공합니다. 맑은 공기와 푸른 숲이 어우러진 이곳에서 자연과 하나가 되어보세요.</p>
						<p>캠프파이어를 즐기며 별빛 아래에서 휴식을 취하거나, 아침 산책을 통해 상쾌한 시작을 맞이할 수 있습니다.
							또한, 다양한 체험 프로그램이 마련되어 있어, 어린이와 어른 모두가 즐거운 시간을 보낼 수 있습니다.</p>
						<p>Enum Camping은 환경 보호를 중요시하며, 지속 가능한 캠핑을 지향합니다. 방문객 여러분께서도
							자연을 존중하며 즐거운 캠핑을 즐길 수 있도록 협조 부탁드립니다.</p>
					</div>
				</div>
			</div>
		</section>

		<!-- Camping Layout Section -->
		<section id="camp-layout" class="section">
			<div style="padding-top: 100px; margin-left: 100px;"
				class="jua-regular">
				<h2 style="padding-bottom: 50px; color: white;">캠핑장 배치도</h2>
				<div class="camp-map" style="text-align: center;">
					<img src="images/main/camp-layout.jpg" alt="Camping Layout "
						height=800px; width=1140px;>
				</div>
			</div>
		</section>

		<!-- Notice Section -->
		<section id="notice" class="section"
			style="padding-top: 200px; padding-bottom: 200px;">
			<div class="container jua-regular" style="color: white;">
				<h2>공지사항</h2>
				<div class="row">
					<div class="col-md-6">
						<div class="card border-3 border-light mt-15">
							<div class="card-body">
								<h5 class="card-title">공지사항</h5>
								<p class="card-text">이 캠핑장은 다음 달 15일부터 20일까지 오픈이 제한될 예정입니다.</p>
								<a href="#공지사항" class="stretched-link"></a>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card border-3 border-light mt-15">
							<div class="card-body">
								<h5 class="card-title">이벤트 소식</h5>
								<p class="card-text">이번 주말 특별 이벤트가 열립니다! 참여하고 특별 혜택을 누리세요.</p>
								<a href="https://example.com/event-details"
									class="stretched-link"></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<%@ include file="./fragments/footer.jspf"%>
	</div>

	<!-- Bootstrap Bundle JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
	<!-- Custom Script for Carousel -->
	<script>
		document.addEventListener('DOMContentLoaded', function() {
			var carouselElement = document
					.querySelector('#carouselExampleIndicators');
			var carousel = new bootstrap.Carousel(carouselElement, {
				interval : 3000
			});
		});
	</script>
	<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <c:url var="weatherJS" value="/js/weather.js" />
    <script src="${weatherJS}"></script>
</body>
</html>
