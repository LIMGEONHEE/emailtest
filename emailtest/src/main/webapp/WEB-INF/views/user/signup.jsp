<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix = "c" uri = "jakarta.tags.core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>회원가입</title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous" />

        <c:url value="../css/header.css" var="headerCss" />
        <link rel="stylesheet" href="${headerCss}">

        <c:url value="../css/footer.css" var="footerCss" />
        <link rel="stylesheet" href="${footerCss}">
        <style>
        #checkUseridbutton, #login, #btnSignUp {
            background-color: black;
            color: white;
            border: 1px solid black;
        }

        #checkUseridbutton:hover {
            color: red;
        }

        #login:hover {
            color: red;
        }
        
       
        #btnSignUp:hover {
            color: green;
        }
    </style> 
    </head>

    <body>
    <div class="wrapper">
        <c:set value="ENUM CAMPING" var="pageTitle" scope="page" />
        <%@ include file="../fragments/header.jspf"%>
        <div class="fo">

            <main style="margin-bottom: 5%; margin-top: 5%" >
                
                <div
                    class="container-fluid d-flex justify-content-center">
                    <div class="my-2 card card-body"
                        style="width: 100%; max-width: 700px;">
                        <c:url var="signUpPage" value="/user/signup" />
                        <form action="${signUpPage}" method="post">
                            <div
                                class="container-fluid d-flex justify-content-center"
                                style="margin-top: 2%; margin-bottom: 5%;'">
                                <h1>회원가입</h1>
                            </div>
                            <div class="my-2 row">
                                <div
                                    class="col-3 d-flex align-items-center">아이디</div>
                                <div class="col-6">
                                    <input type="text"
                                        class="form-control"
                                        id="user_id" name="userId"
                                        placeholder="아이디" required
                                        autofocus />
                                </div>

                                <div class="col-3">
                                    <button type="button"
                                        id="checkUseridbutton"
                                        class="form-control">중복
                                        확인</button>
                                </div>

                                <!-- userid 중복 체크 결과 표시할 영역 -->
                                <div id="checkUseridResult"></div>
                            </div>


                            <div class="my-2 row">
                                <div
                                    class="col-3 d-flex align-items-center">비밀번호</div>
                                <div class="col-9">
                                    <input type="password"
                                        class="form-control"
                                        id="user_password"
                                        name="userPassword"
                                        placeholder="영문/숫자/특수문자(공백 제외)만 허용하며, 2개 이상 조합"
                                        required />
                                </div>
                            </div>

                            <!-- 비밀번호 조건 체크 결과 표시할 영역 -->
                            <div id="passwordValidationMessage"></div>

                            <div class="my-2 row">
                                <div
                                    class="col-3 d-flex align-items-center">비밀번호
                                    확인</div>
                                <div class="col-9">
                                    <input type="password"
                                        class="form-control"
                                        id="user_confirmpassword"
                                        name="confirmpassword"
                                        placeholder="비밀번호확인" required />
                                </div>
                            </div>

                            <!-- userid 중복 체크 결과 표시할 영역 -->
                            <div id="passwordMatchMessage"></div>

                            <div class="my-2 row">
                                <div
                                    class="col-3 d-flex align-items-center">이름</div>
                                <div class="col-9">
                                    <input type="text"
                                        class="form-control"
                                        id="user_name" name="userName"
                                        placeholder="이름" required />
                                </div>
                            </div>

                            <div class="my-2 row">
                                <div
                                    class="col-3 d-flex align-items-center">핸드폰
                                    번호</div>
                                <div class="col-9">
                                    <input type="text"
                                        class="form-control"
                                        id="user_phone" name="userPhone"
                                        placeholder="01X-XXX(또는 XXXX)-XXXX 형식으로 입력하세요."
                                        required />
                                </div>
                                <div id="checkUserPhoneResult"></div>
                            </div>

                            <div class="my-2 row">
                                <div
                                    class="col-3 d-flex align-items-center">이메일</div>
                                <div class="col-9">
                                    <input type="email"
                                        class="form-control"
                                        id="user_email" name="userEmail"
                                        placeholder="이메일" required />
                                </div>
                                <div id="checkUserEmailResult"></div>
                            </div>

                            <!--  <button id="btnsendemail" class="btn btn-outline-success" style="display: inline-block;">인증하기</button>-->


                            <!--
                    <div class="my-2">
                        <input type="text" class="form-control" id="verification code"
                            name="verification code" placeholder="인증번호" required />
                       <button id="btncode" class="btn btn-outline-success" style="display: inline-block;">인증완료</button>
                    </div>
                    -->


                            <div class="my-2">
                                <button id="btnSignUp"
                                    class="form-control btn btn-outline-success disabled">가입하기</button>
                            </div>
                            <div class="mt-2"
                                style="text-align: center;">
                                <div class="m-3"
                                    style="display: inline-block;">
                                    <h6>이미 계정이 있으신가요?</h6>
                                </div>
                                <a href="signin" 
                                    id="login" class="btn"
                                    style="display: inline-block;">로그인</a>
                            </div>
                        </form>
                    </div>
                </div>

            </main>
            <div class="container-fluid" id="wrap">
                <%@ include file="../fragments/footer.jspf"%>
            </div>
        </div>
    </div>
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous">
        </script>

    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <c:url var="weatherJS" value="/js/weather.js" />
    <script src="${weatherJS}"></script>

    <!-- Axio JS 라이브러리 -->
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

   <!--  우리가 만드는 JS 파일 -->
    <c:url var="userSignUpJS" value="/js/user_signup.js" />
    <script src="${userSignUpJS}"></script>
        
</script>
</body>
</html>