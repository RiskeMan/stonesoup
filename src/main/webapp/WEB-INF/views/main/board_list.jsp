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
                                    <div class="box-header with-border">
                                        <h3 class="box-title">List</h3>
                                    </div>

                                    <div class="box-body">

                                        <table class="table table-bordered">
                                            <tbody>
                                                <tr>
                                                    <th style="width: 100px">글번호</th>
                                                    <th style="width: 400px">제목</th>
                                                    <th style="width: 150px">작성자</th>
                                                    <th style="width: 100px">조회수</th>
                                                    <th style="width: 100px">등록일</th>
                                                    <th style="width: 100px">수정일</th>
                                                </tr>

                                                <c:forEach items="${ list }" var="lest">
                                                    <tr>
                                                        <td>${ lest.t_num }</td>
                                                        <td><a class="move" href="#" data-bno="${ lest.t_num }">${ lest.t_name }</a></td>
                                                        <td>${ lest.member }</td>
                                                        <td>${ lest.t_views }</td>
                                                        <td><fmt:formatDate value="${ lest.t_date }" pattern="yyyy/MM/dd hh:mm:ss" /></td>
                                                        <td><fmt:formatDate value="${ lest.t_m_date }" pattern="yyyy/MM/dd hh:mm:ss" /></td>
                                                    </tr>
                                                </c:forEach>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>

            </fieldset>
        </main>

        <footer>
            <%@include file="/WEB-INF/views/comm/footer.jsp" %>
        </footer>


	<%@include file="/WEB-INF/views/comm/header.jsp" %>
	<script>

		
	
	</script>



    </body>

    </html>