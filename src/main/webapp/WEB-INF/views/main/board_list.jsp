<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

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
                                                        <td><a class="move" href="#" data-t_num="${ lest.t_num }">${ lest.t_name }</a></td>
                                                        <td>${ lest.member }</td>
                                                        <td>${ lest.t_views }</td>
                                                        <td><fmt:formatDate value="${ lest.t_date }" pattern="yyyy/MM/dd hh:mm:ss" /></td>
                                                        <td><fmt:formatDate value="${ lest.t_m_date }" pattern="yyyy/MM/dd hh:mm:ss" /></td>
                                                    </tr>
                                                </c:forEach>

                                            </tbody>
                                        </table>
                                    </div>

                                    <div class="box-footer clearfix">
                                        <div class="row">
                                            <div class="col-6">
                                                <nav aria-label="Page navigation example">
                                                    <ul class="pagination">

                                                        <!-- 이전 표시 여부 -->
                                                        <c:if test="${pageMaker.prev }">
                                                            <li class="page-item"><a class="page-link"
                                                                    href="/main/board_list?pageNum=${pageMaker.startPage -1 }">Previous</a>
                                                            </li>
                                                        </c:if>

                                                        <!-- 페이지 번호 출력 -->
                                                        <c:forEach begin="${pageMaker.startPage }"
                                                            end="${pageMaker.endPage }" var="num">
                                                            <li class='page-item ${pageMaker.cri.pageNum == num ? "active":"" }'aria-current="page">
                                                                <a class="page-link movepage" href="#" data-page="${num }" >${num }</a></li>
                                                        </c:forEach>

                                                        <!-- 다음 표시 여부 -->
                                                        <c:if test="${pageMaker.next }">
                                                            <li class="page-item"><a class="page-link"
                                                                    href="/main/board_list?pageNum=${pageMaker.endPage +1 }">Next</a>
                                                            </li>
                                                        </c:if>

                                                    </ul>
                                                </nav>
                                            </div>
                                            <div class="col-6">
                                                <form action="/main/board_list" method="get">
                                                    <select name="type">
                                                        <option selected>검색 종류</option>
                                                        <option value="T" ${ pageMaker.cri.type == 'T'? 'selected': '' }>제목</option>
                                                        <option value="C" ${ pageMaker.cri.type == 'C'? 'selected': '' }>내용</option>
                                                        <option value="W" ${ pageMaker.cri.type == 'W'? 'selected': '' }>작성자</option>
                                                        <option value="TC" ${ pageMaker.cri.type == 'TC'? 'selected': '' }>제목 or 내용</option>
                                                        <option value="TW" ${ pageMaker.cri.type == 'TW'? 'selected': '' }>제목 or 작성자</option>
                                                        <option value="TWC" ${ pageMaker.cri.type == 'TWC'? 'selected': '' }>제목 or 작성자 or 내용</option>
                                                    </select>
                                                    <input type="text" name="keyword" value="${ pageMaker.cri.keyword }" />
                                                    <input type="hidden" name="pageNum" value="${1}" />
                                                    <input type="hidden" name="amount" value="${pageMaker.cri.amount}" />
                                                    <button type="submit" class="btn btn-primary">검색</button>
                                                </form>
                                                <!-- 1) [이전] 1 2 3 4 ... 9 10 [다음] 페이지 번호를 클릭할 때. action="/main/board_list" -->
                                                <!-- 2) 목록에서 제목 클릭할 때 사용. action="/main/get" -->
                                                <form	id="actionForm" action="/main/board_list" method="get">
                                                    <input type="hidden" name="pageNum" id="pageNum" value="${pageMaker.cri.pageNum}" />
                                                    <input type="hidden" name="amount" id="amount" value="${pageMaker.cri.amount}" />
                                                    <input type="hidden" name="type" id="type" value="${pageMaker.cri.type}" />
                                                    <input type="hidden" name="keyword" id="keyword" value="${pageMaker.cri.keyword}" />

                                                    <input type="hidden" name="t_num" id="t_num" value="" />
                                                </form>
                                            </div>
                                        </div>
                                        <a class="btn btn-primary" id="maker" href="#" role="button">글쓰기</a>

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

	<!-- j쿼리 구문 -->
	<%@include file="/WEB-INF/views/comm/plugln.jsp" %>
    <script>

        // 폼태그 참조.
        let actionForm = document.getElementById("actionForm");

        // <form id="actionForm" 태그를 참조하여, 필요한 정보를 변경 및 사용.
        // 1) 페이지 번호 클릭시 동작되는 이벤트 설정
        // <a class="movepage">1</a><a class="movepage">2</a><a class="movepage">3</a>...
        const movePages = document.getElementsByClassName("movepage");

        Array.from(movePages).forEach(function(mv_Page) {

            

            // actionForm 전송 작업
            mv_Page.addEventListener("click", function(event) {
                event.preventDefault();
                // console.log("페이지 번호" , event.target.dataset.page);
                // data-page="1"
                document.getElementById("pageNum").value = event.target.dataset.page;
                actionForm.setAttribute("action", "/main/board_list");
                actionForm.submit(); // /main/board_list
            });
        });

        // 2) 제목 클릭시 이벤트 설정 : 게시물 읽기
        // 10개의 <a class="move">제목</a> 태그를 참조해 forEach로 반복하여 입력해 Array형태로 저장하는 함수.
        $(document).ready(function() {

            // 글 제목 클릭 a class="move"
            $("a.move").on("click", function(e) {
                
                e.preventDefault();
                
                let t_num = "/main/board_view?t_num=" + $(this).data("t_num");
                // console.log("작동위치 + t_num", t_num)

                // 히든의 t_num에 클릭한 구문의 값을 넣기.
                $("#t_num").val($(this).data("t_num"))
                console.log($("#t_num").val());
                actionForm = $("#actionForm");

                // location.href = "/main/board_view?t_num=" + t_num;
                actionForm.attr("action", t_num);
                actionForm.submit();
            })

            // 글쓰기 클릭 a class="btn btn-primary"
            $("#maker").on("click", function(e) {
                
                e.preventDefault();
                location.href = "/main/board_maker";
            })
        })

    </script>




    </body>

    </html>