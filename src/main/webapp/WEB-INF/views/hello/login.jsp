            <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

            <!doctype html>
            <html lang="ko">


            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                <meta name="description" content="">
                <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
                <meta name="generator" content="Hugo 0.101.0">
                <title>Cover Template Bootstrap v4.6</title>



                <!-- css -->
                <%@include file="/WEB-INF/views/comm/css.jsp" %>

            </head>
            BOAER

            <body class="text-center">

                <header>
                    <%@include file="/WEB-INF/views/comm/header.jsp" %>
                </header>

                <main role="main" class="inner cover text-center mx-auto">
                    <br><br><br><br><br>
                    <fieldset class="form-group border p-3">
                        <legend class="w-auto px-2">회원가입</legend>
                        <div class="container">
                            <section>
                                <div>
                                    <div class="row text-center">
                                        <!-- row는 하위 div를 12개를 사용 할 수 있다. -->
                                        <!-- <div class="col-해상도-숫자(하위 div에서 사용하는 사이즈. 총합이 12가 되어야 한다.)"></div> -->
                                        <div class="col-md-2"></div>
                                        <div class="col-md-8">

                                            <div class="box">

                                                <div class="box-body">

                                                    <form class="form-signin" role="form" method="post" id="form_data" action="/hello/login">

                                                        <div class="form-label-group">
                                                            <div style="text-align: left;"><label
                                                                    for="member_id">아이디</label></div>
                                                            <input type="text" id="member_id" name="member_id"
                                                                class="form-control" placeholder="아이디" value="user00">
                                                        </div>
                                                        <div class="form-label-group">
                                                            <div style="text-align: left;"><label
                                                                    for="member_pw">비밀번호</label></div>
                                                            <input type="password" id="member_pw" name="member_pw"
                                                                class="form-control" placeholder="비밀번호" value="1234">
                                                        </div>
                                                        <br><br>

                                                        <button class="btn btn-lg btn-primary btn-block" id="btn_login"
                                                            type="submit">확인</button>
                                                    </form>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </div>

                    </fieldset>
                    <br><br><br><br><br>
                </main>

                <footer>
                    <%@include file="/WEB-INF/views/comm/footer.jsp" %>
                </footer>


                <%@include file="/WEB-INF/views/comm/header.jsp" %>
                    <!-- j쿼리 구문 -->
                    <%@include file="/WEB-INF/views/comm/plugln.jsp" %>
                        <script>

                            $(document).ready(function () {

                                let msg = '${msg}';
                                if(msg != "") {
                                    alert(msg);
                                }

                                // let form_data = $("#form_data");

                                // $("#btn_login").on("click", function(e) {
                                //     e.prototype();
                                //     if($("#member_id").val() == "") {
                                //         alert("아이디를 입력해 주세요.");
                                //         $("#member_id").focus();
                                //         return;
                                //     }if($("#member_pw").val() == "") {
                                //         alert("비밀번호를 입력해 주세요.");
                                //         $("#member_pw").focus();
                                //         return;
                                //     }

                                //     form_data.submit();

                                // });
                            });

                        </script>

            </body>

            </html>