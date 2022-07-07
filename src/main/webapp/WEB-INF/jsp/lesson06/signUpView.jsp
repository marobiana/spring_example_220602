<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script> 

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1>회원 가입</h1>
		
		<div class="form-group">
			<label for="name">이름</label>
			<div class="d-flex">
				<input type="text" id="name" class="form-control col-3">
				<button type="button" class="btn btn-info" id="checkBtn">중복확인</button>
			</div>
			<small id="warningBox"></small>
		</div>
		
		<button type="button" class="btn btn-success" id="joinBtn">가입하기</button>
	</div>
	
<script>
$(document).ready(function() {
	
	// 중복확인 버튼 클릭
	$('#checkBtn').on('click', function() {
		// #warningBox 하위 태그들 초기화
		$('#warningBox').empty();  // 자식 태그들을 모두 비움
		
		let name = $('#name').val().trim();
		console.log(name);
		
		// validation
		
		// 이름이 입력 됐는지
		if (name == "") {
			$('#warningBox').append('<span class="text-danger">이름이 비어있습니다.</span>');
			return;
		}
		
		// 이름이 중복되는지 확인(DB 조회) -> AJAX 통신
		$.ajax({
			// request
			type:"GET"
			, url:"/lesson06/is_duplication?name=" + name
			
			// response
			, success: function(data) {
				console.log(data.is_duplication);
				if (data.is_duplication) {
					$('#warningBox').append('<span class="text-danger">중복된 이름입니다.</span>');
				}
			}
			, error: function(e) {
				alert("중복 확인에 실패했습니다.");
			}
		});
	});
	
	// 회원가입 버튼 클릭
	$('#joinBtn').on('click', function(e) {
		console.log($('#warningBox').children().length);
		
		// 만약에 warningBox에 아무 자식노드(태그 객체)가 없으면 서브밋 한다.
		if ($('#warningBox').children().length == 0) {
			alert("서브밋 가능");
		} else {
			alert("서브밋 불가");
		}
	});
});
</script>
</body>
</html>


