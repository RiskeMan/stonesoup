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

            <body class="text-center">

                <header>
                    <%@include file="/WEB-INF/views/comm/header.jsp" %>
                </header>

                <main role="main" class="inner cover text-center mx-auto">
                    <br><br><br><br><br>
                    <fieldset class="form-group border p-3">
                        <legend class="w-auto px-2">게시판</legend>
                        <div class="container">
                            <section>
                                <div class="row">
                                    <!-- row는 하위 div를 12개를 사용 할 수 있다. -->
                                    <!-- <div class="col-해상도-숫자(하위 div에서 사용하는 사이즈. 총합이 12가 되어야 한다.)"></div> -->
                                    <div class="col-md-12">

                                        <div class="box">

                                            <div class="box-body">

                                                <div class="box box-primary">

                                                    <form role="form" method="post" action="./board_maker">
                                                        <div class="box-body">

                                                            <div class="form-group">
                                                                <label for="title">제목</label>
                                                                <input type="text" class="form-control" name="title" id="title">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="writer">작성자</label> 
                                                                <input type="text" class="form-control" name="writer" id="writer">
                                                            </div>
                                                            <div class="form-group">
                                                                <label>내용</label>
                                                                <textarea class="form-control" rows="3" name="content" style="height: 500px"></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="box-footer">

                                                            <button type="submit" id="btn_ok" class="btn btn-primary">확인</button>
                                                            <button type="button" id="btn_list" class="btn btn-primary">목록</button>
                                                        </div>
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

                        $(document).ready(function() {

                            $("#btn_list").on("click", function() {

                                location.href = "/main/board_list";
                            });

                        });


                    </script>




            </body>

            </html>