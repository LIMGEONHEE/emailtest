<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>

<c:url value="/css/signin.css" var="signinCSS" />
<link rel="stylesheet" href="${signinCSS}" />

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Enum Semi-Project</title>
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
    crossorigin="anonymous" />

<c:url value="../css/header.css" var="headerCss" />
<link rel="stylesheet" href="${headerCss}">

<c:url value="../css/footer.css" var="footerCss" />
<link rel="stylesheet" href="${footerCss}">
</head>
<body>
    <div class="wrapper">
        <%@ include file="../fragments/header.jspf"%>
        <div class="login-container footer-main-content">
            <div class="row">
                <div class="col-12">
                    <div class="fixed-size-form mb-5"
                        style="border: 1px solid black; padding: 10px; margin-top: 5%; margin-left: 200px; margin-right: 200px;">
                        <div class="card-header text-center mt-3">
                            <h2>로그인</h2>
                        </div>
                        <div class="card-body">
                            <form method="post">
                                <c:if
                                    test="${not empty param.result && param.result eq 'f'}">
                                    <div class="text-danger">아이디와
                                        패스워드를 확인하세요.</div>
                                </c:if>

                                <div
                                    class="form-group mt-5 d-flex align-items-center">
                                    <label for="userid"
                                        class="form-label text-center">아이디</label>
                                    <input type="text" name="userId"
                                        placeholder="아이디"
                                        class="form-control write"
                                        id="userId" required autofocus />
                                </div>
                                <div
                                    class="form-group mt-3 d-flex align-items-center">
                                    <label for="password"
                                        class="form-label text-center">비밀번호</label>
                                    <input type="password"
                                        name="userPassword"
                                        placeholder="비밀번호"
                                        class="form-control write"
                                        id="userPassword" required />
                                </div>                              
                                <div class="mt-2">
                                    <input class="form-control btn btn-login mt-2"
                                        id="btnSignIn" type="submit"
                                        value="로그인" />
                                </div>
                                <div class="mt-2 center"
                                    style="text-align: center;">
                                    <div
                                        class="d-flex align-items-center justify-content-center">
                                        <button id="btnSearchId"
                                            class="btn btn-search-id"
                                            style="display: inline-block;">아이디
                                            찾기</button>
                                        <h3 style="margin: 0 10px;">|</h3>
                                        <button id="btnSearchPassword"
                                            class="btn btn-search-password"
                                            style="display: inline-block;">비밀번호
                                            찾기</button>
                                    </div>
                                </div>
                                <div class="mt-2"
                                    style="text-align: right;">
                                    <div class="m-3"
                                        style="display: inline-block;">
                                        <h6>계정이 없으신가요?</h6>
                                    </div>
                                    <a href="signup" 
                                        id="btnUpdate"
                                        class="btn signup"
                                        style="display: inline-block;">회원가입</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@ include file="../fragments/footer.jspf"%>
    </div>
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <c:url var="weatherJS" value="/js/weather.js" />
    <script src="${weatherJS}"></script>
</body>
</html>