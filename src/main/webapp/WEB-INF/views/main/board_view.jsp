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

                                        <div class="box box-primary">

                                            <!-- 이전 페이지 정보 -->
                                            <input type="hidden" name="pageNum" id="pageNum" value="${cri.pageNum}" />
                                            <input type="hidden" name="amount" id="amount" value="${cri.amount}" />
                                            <input type="hidden" name="type" id="type" value="${cri.type}" />
                                            <input type="hidden" name="keyword" id="keyword" value="${cri.keyword}" />
                                            <input type="hidden" name="bno" id="bno" value="${board.bno}" />

                                            <div class="box-header with-border">
                                                <h3 class="box-title mt-5">게시판</h3>
                                            </div>
                
                                            <div class="box-body">
                                                <div class="form-group">
                                                    <label for="title">글 번호</label> <input type="text"
                                                        class="form-control" name="bno" id="bno"
                                                        value="${ view.t_num }" readonly>
                                                </div>
                                                <div class="form-group">
                                                    <label for="title">제목</label> <input type="text"
                                                        class="form-control" name="title" id="title"
                                                        value="${ view.t_name }" readonly>
                                                </div>
                                                <div class="form-group">
                                                    <label for="writer">작성자</label> <input type="text"
                                                        class="form-control" name="writer" id="writer"
                                                        value="${ view.member }" readonly>
                                                </div>
                                                <div class="form-group">
                                                    <label>내용</label>
                                                    <textarea class="form-control" rows="3" name="content" readonly
                                                        style="height: 500px">${ view.t_content }</textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label for="title">작성일자</label> <input type="text"
                                                        class="form-control" name="regdate" id="regdate"
                                                        value='<fmt:formatDate value="${ view.t_date }" pattern="yyyy/MM/dd" />'
                                                        readonly>
                                                </div>
                                                <div class="form-group">
                                                    <label for="title">수정일자</label> <input type="text"
                                                        class="form-control" name="updateddate" id="updateddate"
                                                        value='<fmt:formatDate value="${ view.t_m_date }" pattern="yyyy/MM/dd" />'
                                                        readonly>
                                                </div>
                                            </div>

                                            <div class="box-footer">

                                                <button type="button" id="btn_modify" class="btn btn-primary">수정</button>
                                                <button type="button" id="btn_list" class="btn btn-primary">목록</button>
                                                <button type="button" id="btn_delete" class="btn btn-primary">삭제</button>
                                            </div>
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
    <script>



    </script>




    </body>

    </html>