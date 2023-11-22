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

                                                    <form class="form-signin" role="form" method="post" id="form_data" action="/hello/join">

                                                        <div class="form-label-group" style="text-align: left;">
                                                            <div style="text-align: left;"><label
                                                                    for="member_id">아이디</label></div>
                                                            <input type="text" id="member_id" name="member_id" style="display: inline;"
                                                                class="form-control col-9" placeholder="아이디">
                                                                <button type="button" id="btn_id_check" class="btn btn-primary col-2">중복 확인</button>
                                                        </div>
                                                        <div class="form-label-group">
                                                            <div style="text-align: left;"><label
                                                                    for="member_pw">비밀번호</label></div>
                                                            <input type="password" id="member_pw" name="member_pw"
                                                                class="form-control" placeholder="비밀번호">
                                                        </div>
                                                        <div class="form-label-group">
                                                            <div style="text-align: left;"><label
                                                                    for="member_pw_re">비밀번호 확인</label></div>
                                                            <input type="password" id="member_pw_re" name="member_pw_re"
                                                                class="form-control" placeholder="비밀번호 확인">
                                                        </div>
                                                        <div class="form-label-group">
                                                            <div style="text-align: left;"><label
                                                                    for="member_name">성명</label></div>
                                                            <input type="text" id="member_name" name="member_name"
                                                                class="form-control" placeholder="성명">
                                                        </div>
                                                        <div class="form-label-group" style="text-align: left;">
                                                            <div style="text-align: left;"><label
                                                                    for="member_email">이메일주소</label></div>
                                                            <input type="email" id="member_email" name="member_email" style="display: inline;"
                                                                class="form-control col-9" placeholder="이메일주소">
                                                                <button type="button" class="btn btn-primary col-2">이메일 인증</button>
                                                        </div>
                                                        <div class="form-label-group" style="text-align: left;">
                                                            <div style="text-align: left;"><label
                                                                    for="member_email">인증 확인</label></div>
                                                            <input type="text" id="member_email" name="member_email" style="display: inline;"
                                                                class="form-control col-9" placeholder="이메일주소">
                                                                <button type="button" class="btn btn-primary col-2">확인</button>
                                                        </div>
                                                        <div class="form-label-group" style="text-align: left;">
                                                            <div style="text-align: left;"><label
                                                                for="member_name">우편번호</label></div>
                                                            <input type="text" id="sample2_postcode" style="display: inline;"
                                                                name="member_zipcode" class="form-control col-9"
                                                                placeholder="우편번호">
                                                                <button type="button" onclick="sample2_execDaumPostcode()"
                                                                class="btn btn-primary col-2">검색</button>
                                                        </div>
                                                        <div class="form-label-group">
                                                            <div style="text-align: left;"><label
                                                                    for="sample2_address">주소</label></div>
                                                            <input type="text" id="sample2_address" name="member_addr"
                                                                class="form-control" placeholder="주소">
                                                        </div>
                                                        <div class="form-label-group">
                                                            <div style="text-align: left;"><label
                                                                    for="sample2_detailAddress">상세주소</label></div>
                                                            <input type="text" id="sample2_detailAddress"
                                                                name="member_deaddr" class="form-control"
                                                                placeholder="상세주소">
                                                            <input type="hidden" id="sample2_extraAddress"
                                                                name="extraAddress" class="form-control"
                                                                placeholder="참고항목">
                                                        </div>


                                                        <div class="form-label-group">
                                                            <div style="text-align: left;"><label
                                                                    for="member_phone">전화번호</label></div>
                                                            <input type="text" id="member_phone" name="member_phone"
                                                                class="form-control" placeholder="전화번호">
                                                        </div>
                                                        <br>
                                                        <div class="checkbox mb-3">
                                                            <label>
                                                                <input type="checkbox" value="remember-me">
                                                                <span>Remember me</span>
                                                            </label>
                                                        </div>
                                                        <button class="btn btn-lg btn-primary btn-block"
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

                            // 아이디 체크 유무 확인용 변수값.
                            
                            $(document).ready(function () {

                                let idCheck_ok = false;

                                // 아이디 입력값 유무 체크 구문
                                $("#btn_id_check").on("click", function() {
                                    if($("#member_id").val() == "") {
                                        alert("아이디를 입력해 주세요.");
                                        $("#member_id").focus();
                                        return
                                    }

                                    // 아이디 중복체크
                                    $.ajax({
                                        url: '/hello/idcheck',
                                        type: 'get',
                                        data: {member_id : $("#member_id").val()},
                                        dataType: 'text',
                                        success: function(result) {
                                            if(result == "true") {
                                                alert("사용 가능한 아이디 입니다.")
                                                idCheck_ok = true;
                                                $("#member_pw").focus();
                                            }else {
                                                alert("중복되는 아이디 입니다. 새로운 아이디를 입력해 주세요.")
                                                idCheck_ok = false;
                                                $("#member_id").val(""); // 아이디 텍스트박스를 값을 지움
                                                $("#member_id").focus(); // 포커스
                                            }
                                        }
                                    });

                                })

							
                                
                                

                                // 비밀번호 확인.
                            });




                        </script>


                        <input type="button" onclick="sample2_execDaumPostcode()" value="우편번호 찾기"><br>


                        <!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
                        <div id="layer"
                            style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
                            <img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer"
                                style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1"
                                onclick="closeDaumPostcode()" alt="닫기 버튼">
                        </div>

                        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
                        <script>
                            // 우편번호 찾기 화면을 넣을 element
                            var element_layer = document.getElementById('layer');

                            function closeDaumPostcode() {
                                // iframe을 넣은 element를 안보이게 한다.
                                element_layer.style.display = 'none';
                            }

                            function sample2_execDaumPostcode() {
                                new daum.Postcode({
                                    oncomplete: function (data) {
                                        // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                                        // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                                        // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                                        var addr = ''; // 주소 변수
                                        var extraAddr = ''; // 참고항목 변수

                                        //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                                        if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                                            addr = data.roadAddress;
                                        } else { // 사용자가 지번 주소를 선택했을 경우(J)
                                            addr = data.jibunAddress;
                                        }

                                        // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                                        if (data.userSelectedType === 'R') {
                                            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                                            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                                            if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                                                extraAddr += data.bname;
                                            }
                                            // 건물명이 있고, 공동주택일 경우 추가한다.
                                            if (data.buildingName !== '' && data.apartment === 'Y') {
                                                extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                                            }
                                            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                                            if (extraAddr !== '') {
                                                extraAddr = ' (' + extraAddr + ')';
                                            }
                                            // 조합된 참고항목을 해당 필드에 넣는다.
                                            document.getElementById("sample2_extraAddress").value = extraAddr;

                                        } else {
                                            document.getElementById("sample2_extraAddress").value = '';
                                        }

                                        // 우편번호와 주소 정보를 해당 필드에 넣는다.
                                        document.getElementById('sample2_postcode').value = data.zonecode;
                                        document.getElementById("sample2_address").value = addr;
                                        // 커서를 상세주소 필드로 이동한다.
                                        document.getElementById("sample2_detailAddress").focus();

                                        // iframe을 넣은 element를 안보이게 한다.
                                        // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                                        element_layer.style.display = 'none';
                                    },
                                    width: '100%',
                                    height: '100%',
                                    maxSuggestItems: 5
                                }).embed(element_layer);

                                // iframe을 넣은 element를 보이게 한다.
                                element_layer.style.display = 'block';

                                // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
                                initLayerPosition();
                            }

                            // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
                            // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
                            // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
                            function initLayerPosition() {
                                var width = 300; //우편번호서비스가 들어갈 element의 width
                                var height = 400; //우편번호서비스가 들어갈 element의 height
                                var borderWidth = 5; //샘플에서 사용하는 border의 두께

                                // 위에서 선언한 값들을 실제 element에 넣는다.
                                element_layer.style.width = width + 'px';
                                element_layer.style.height = height + 'px';
                                element_layer.style.border = borderWidth + 'px solid';
                                // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
                                element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width) / 2 - borderWidth) + 'px';
                                element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height) / 2 - borderWidth) + 'px';
                            }
                        </script>

            </body>

            </html>
