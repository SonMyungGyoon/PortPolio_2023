<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html lang="ko" data-bs-theme="auto">
  <head><script src="${path}/resources/bootstrap-5.3.2-dist/js/color-modes.js"></script>

    <meta http-equiv="Content-Type" content="charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.118.2">
    <title>Kity - Create Account</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/sign-in/">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
	<link href="${path}/resources/bootstrap-5.3.2-dist/css/bootstrap.min.css" rel="stylesheet">
  	
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        width: 100%;
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }

      .btn-bd-primary {
        --bd-violet-bg: #712cf9;
        --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

        --bs-btn-font-weight: 600;
        --bs-btn-color: var(--bs-white);
        --bs-btn-bg: var(--bd-violet-bg);
        --bs-btn-border-color: var(--bd-violet-bg);
        --bs-btn-hover-color: var(--bs-white);
        --bs-btn-hover-bg: #6528e0;
        --bs-btn-hover-border-color: #6528e0;
        --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
        --bs-btn-active-color: var(--bs-btn-hover-color);
        --bs-btn-active-bg: #5a23c8;
        --bs-btn-active-border-color: #5a23c8;
      }

      .bd-mode-toggle {
        z-index: 1500;
      }

      .bd-mode-toggle .dropdown-menu .active .bi {
        display: block !important;
      }
    </style>
	
    <!-- Custom styles for this template -->
    <link href="${path}/resources/bootstrap-5.3.2-dist/css/sign-in.css" rel="stylesheet">
  </head>
  <body class="d-flex align-items-center py-4 bg-body-tertiary">
  	<div class = "container d-flex w-100 h-100 mx-auto flex-column">
		<header class ="mb-1">
			<nav class="navbar navbar-expand-lg bg-body-tertiary">
			  <div class="container-fluid">
				<a class="navbar-brand" href="/kity">Kity</a>
			  </div>
			</nav>
		</header>
	    <main class="bg-light w-50 m-auto">
			<form action = "/kity/Auth/createAccount" method = "POST" accept-charset="UTF-8">
			    <h1 class="h3 mb-3 fw-normal">Please Create Account</h1>
				<div class="form-group">
					<label for="exampleInputEmail1" class="form-label mt-4">ID</label>
					<input type="text" class="form-control" id="u_id" aria-describedby="emailHelp" name = "u_id" maxlength = "20"> 
					<span class="error_next_box" id="idChk"  aria-live="assertive"></span>
				</div>
				<div class="form-group has-success">
					<label class="form-label mt-2 mb-2" for="exampleInputEmail1">Password</label>
					<input type="password" class="form-control" id="u_pw" name="u_pw">
					<span class="error_next_box" id="pwMsg" style="display:none" aria-live="assertive"></span>
				</div>
				<div class="form-group has-danger">
					<label class="form-label mt-2 mb-2" for="exampleInputEmail1">Password Check</label> 
					<input type="password" class="form-control" id="u_pwcheck" > 
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1" class="form-label mt-2 mb-2">Name</label>
					<input type="text" class="form-control" id="u_name" aria-describedby="emailHelp" name="u_name"> 
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1" class="form-label mt-2 mb-2">E-Mail</label>
					<input type="email" class="form-control" id="u_email" aria-describedby="emailHelp" name="u_email"> 
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1" class="form-label mt-2 mb-2">Phone</label>
					<input type="text" class="form-control" id="u_phone" aria-describedby="emailHelp" name="u_phone"> 
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1" class="form-label mt-2 mb-2">Address</label>
					<div class="input-group">
					<input type="text" class="form-control"  readonly = "readonly" placeholder="우편번호" id = "u_addrnum" name="u_addrnum">
					<input type="button" class="btn btn-outline-secondary" value = "주소찾기" onclick="checkPost()">
					</div>
					<input type="text" class="form-control mt-1" readonly = "readonly" placeholder="주소" id = "u_addr" name="u_addrstreet">
					<input type="text" class="form-control mt-1 address_input_3" aria-describedby="emailHelp" placeholder="상세주소" id = "u_addrdetail" name="u_addrdetail">
					</div>
				<div class="d-grid gap-2 ">
					<input type="submit" class="btn btn-primary btn-lg mt-3" value="Create Account"/>
				</div>
			</form>	
		</main>
    
  	</div>
  	<script>
  		function checkPost(){
  			new daum.Postcode({
  				oncomplete: function(data){
  				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
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
  	                if(data.userSelectedType === 'R'){
  	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
  	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
  	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
  	                        extraAddr += data.bname;
  	                    }
  	                    // 건물명이 있고, 공동주택일 경우 추가한다.
  	                    if(data.buildingName !== '' && data.apartment === 'Y'){
  	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
  	                    }
  	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
  	                    if(extraAddr !== ''){
  	                        extraAddr = ' (' + extraAddr + ')';
  	                    }
  	                    // 조합된 참고항목을 해당 필드에 넣는다.
  	                    //document.getElementById("sample6_extraAddress").value = extraAddr;
  	               		// 주소변수 문자열과 참고항목 문자열 합치기
  	                  	addr += extraAddr;
  	                } else {
  	                    addr += ' ';
  	                }
  	 
  	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
  	                document.getElementById('u_addrnum').value = data.zonecode;
  	                //jquery 사용방법
  	                //$(".address_input_1").val(data.zonecode);
  	                document.getElementById("u_addr").value = addr;
  	                // 커서를 상세주소 필드로 이동한다.
  	                //document.getElementById("u_addrdetail").setAttribute("readonly",false);
  	                document.getElementById("u_addrdetail").focus();
  				}
  			}).open();
  		}
  		
  		$(function() {
  	      //각 입력값들의 유효성 검증을 위한 정규표현식을 변수로 선언.
  	         const getIdCheck = RegExp(/^[a-zA-Z0-9]{4,14}$/);
  	         const getPwCheck = RegExp(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/);
  	         const getNameCheck = RegExp(/^[가-힣]+$/);
  	         
  	      // 입력값 중 하나라도 만족하지 못한다면 회원가입 처리를 막기위한 논리형 변수 선언.
  	     	 let chk1 = false, chk2 = false, chk3 = false, chk4 = false;
  	     	    
  	      //회원가입시 사용자의 입력값 검증!
  	      
  	      //1. ID입력값 검증 
  	      $('#u_id').keyup(function() {
  	         if($(this).val() === '' ) {//지금 발생하는 이곳이 빈 문자열이니?
  	            $(this).css('background-color', 'pink');
  	            $('#idChk').html('<b style="font-size: 14px; color: red">[아이디는 필수값입니다.]</b>');//텍스트를 집어넣을거야 
  	            chk1 = false;
  	         }
  	     	//아이디 입력값 유효성 검사(영문으로만 4~14글자 허용)
  	        //정규표현식변수.test('검증하고 싶은 값')  => return boolean type
  	        //정규표현식에 어긋난 값이면 false, 올바른 값이면true를 반환
  	        else if(!getIdCheck.test($(this).val())) {//정규표현식이 틀렸다면
  	            $(this).css('background-color', 'pink');
  	            $('#idChk').html('<b style="font-size: 14px; color: red">[영문자, 숫자조합 4-14로쓰세요]</b>');
  	        	chk1 = false;
  	        }else{//아이디 중복확인 ajax 사용, 특정 호직이 실행이 끝날 때까지 기다리지 않고 먼저 코드를 샐행 (페이지 전환 없이 통신)
  	        	 
  	         	//ID중복 확인 통신을 위해 입력값을 가져오기
  	         	const id = $(this).val();
  	         
  	         	//ajax 호출.
  	         	//클라이언트에서 서버와 비동기 통신을 진행하는 ajax함수.
  	         	$.ajax({
  	         		 type :'post', // 서버에 전송하는 http방식
  	         		 url :'${pageContext.request.contextPath}/Auth/checkId', // 서버 요청 url
  	         		 headers : {
  	         			 'Content-Type' : 'application/json'
  	         		 }, 
  	         		 dataType : 'text', //서버로 부터 응답받을 데이터의 형태 
  	        		 data : id, // 서버로 전송할 데이터 // 위에서 지정한 const id 
  	        		 success : function(result) { // 매개변수에 통신성공시 데이터가 저장된다.
  						//서버와 통신성공시 실행할 내용 작성.
  						console.log('통신 성공!' + result);
  	        		 	if(result === 'available'){
  	        		 		 $('#u_id').css('background-color', 'aqua');
  	        		 		 $('#idChk').html('<b style="font-size: 14px; color: green">[아이디 사용이 가능하다]</b>');
  	        		 		 chk1 = true;
  	        		 	}else{
  	        		 		 $('#user_id').css('background-color', 'pink');
  	        		 		 $('#idChk').html('<b style="font-size: 14px; color: red">[아이디 중복!]</b>');
  	        		 		 chk1 = false;
  	        		 	}
  					},
  					error : function (status, error) { //통신에 실패했을때
  						console.log('통신실패');
  						console.log(status, error)
  					}
  	          	}); // end ajax(아이디 중복 확인)
  	         }
			});
		})
  	</script>
	<script src="${path}/resources/bootstrap-5.3.2-dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>