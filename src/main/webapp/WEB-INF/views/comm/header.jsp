<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="#">Carousel</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse"
            aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
                </li>
                <!-- 비 로그인시 -->
                <c:if test="${sessionScope.loginStatus == null }">
                <li>
                    <a class="nav-link" href="/hello/login">로그인</a>
                </li>
                <li>
                    <a class="nav-link" href="/hello/join">회원가입</a>
                </li>
                </c:if>
                
                <!-- 로그인시 -->
                <c:if test="${sessionScope.loginStatus != null }">
                <li>
                    <a class="nav-link" id="logout" href="#">로그아웃</a>
                    <script>
                        document.getElementById("logout").addEventListener("click", function(e) {
                            e.preventDefault();
                            if (confirm("로그아웃 하시겠습니까?")) {
                                location.href = "/hello/logout";
                            }else {
                                return;
                            }
                        })
                    </script>
                </li>
                <li>
                    <a class="nav-link" href="/hello/member_editdata_who">회원수정</a>
                </li>
                </c:if>
                
                <li class="nav-item">
                    <a class="nav-link" href="/main/board_list">게시판</a>
                </li>
                <li class="nav-item">
                    <span></span>
                </li>
                <li>
                    <a class="nav-link" href="#">admin</a>
                </li>
                <c:if test="${sessionScope.loginStatus != null }">
                <li>
                    <b class="nav-link" style="color: white;">[${sessionScope.loginStatus.member_id}]</b>
                </li>
                <li>
                    <b class="nav-link" style="color: white;">이전 로그인 시간 : <fmt:formatDate value="${sessionScope.loginStatus.member_lastlogin }" pattern="yyyy-MM-dd hh:mm:ss"/></b>
                </li>
                </c:if>
            </ul>
            <form class="form-inline mt-2 mt-md-0">
                <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>