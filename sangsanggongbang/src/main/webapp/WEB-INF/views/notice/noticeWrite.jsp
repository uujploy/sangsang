<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:choose>
	<c:when test="${!empty sessionScope.hId }">
		<%@ include file="../inc/new_top_host.jsp"%>
	</c:when>
	<c:when test="${!empty sessionScope.mId }">
		<%@ include file="../inc/new_top_user.jsp"%>
	</c:when>
	<c:when test="${!empty sessionScope.adId }">
		<%@ include file="../inc/new_top_admin.jsp"%>
	</c:when>
	<c:otherwise>
		<%@ include file="../inc/new_top_user.jsp"%>
	</c:otherwise>
</c:choose>
<br>
<br>
<br>
<script type="text/javascript"
	src="<c:url value='/resources/ckeditor/ckeditor.js'/> "></script>
<script
	src="<c:url value='/resources/vendor/jquery/dist/jquery.min.js'/> "></script>
<script
	src="<c:url value='/resources/vendor/popper.js/dist/umd/popper.min.js'/>"></script>
<script
	src="<c:url value='/resources/vendor/bootstrap/dist/js/bootstrap.min.js'/>"></script>
<script
	src="<c:url value='/resources/vendor/headroom.js/dist/headroom.min.js'/>"></script>
<script
	src="<c:url value='/resources/vendor/onscreen/dist/on-screen.umd.min.js'/>"></script>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<div class=container>
	<div class="card border-light p-md-2">
		<div class="card-body p-4">
			<form name="frmEwrite" method="post" enctype="multipart/form-data"
				action="<c:url value='/notice/noticeWrite'/> ">

				<div class="row">
					<div class="col-lg-12 mb-5">
						<span> 늘찬(멤버) <input type="radio" id="check"
							name="noticeFlag" value="M"> <br> 늘솜(호스트) <input
							type="radio" id="check" name="noticeFlag" value="H"><br>
							전체 회원 <input type="radio" id="check" name="noticeFlag" value="A">
						</span> <br> <br>
						<div
							style="display: block; width: 100%; border-bottom: solid 1px gray">
							<label for="title">제목 : </label> <input type="text" id="title"
								name="noticeTitle" class="infobox"
								style="border: none; outline: none;" />
						</div>
						<br>
						<div>
							<label for="upfile">대표이미지 📁 &nbsp;&nbsp;|&nbsp;&nbsp;</label> <input
								type="file" name="upfile" id="upfile">
						</div>
						<br>

						<!-- 이벤트 글쓰기 -->
						<div class="form-group" style="display: block; width: 100%;">

							<label for="exampleFormControlTextarea2">공지사항 내용 | </label>
							<textarea class="ckediter" id="content" name="noticeContent"
								rows="20"></textarea>
						</div>
					</div>
				</div>
				<!-- 버튼 가운데 정렬 -->
				<div style="text-align: center;">
					<input value="등록" class="btn mb-2 mr-2 btn-outline-gray"
						type="submit"> <input value="목록"
						class="btn mb-2 mr-2 btn-outline-gray" id="btlist" type="button">
				</div>
			</form>
		</div>
	</div>
</div>
<br>
<br>
<br>
<br>

<script type="text/javascript">
	CKEDITOR.replace('content');
	CKEDITOR.on('dialogDefinition', function(ev) {

		var dialogName = ev.data.name;

		var dialog = ev.data.definition.dialog;

		var dialogDefinition = ev.data.definition;

		if (dialogName == 'image') {

			dialog.on('show', function(obj) {

				this.selectPage('Upload'); //업로드텝으로 시작

			});

			dialogDefinition.removeContents('advanced'); // 자세히탭 제거

			dialogDefinition.removeContents('Link'); // 링크탭 제거

		}

	});

	$(function() {

		$('form[name=frmEwrite]').submit(function() {
			$('.infobox').each(function(idx, item) {
				if ($(this).val().length < 1) {
					alert($(this).prev().html() + "을 입력하세요");
					$(this).focus();
					event.preventDefault();
					return false; //each 탈출
				}

			});

			/* 		$('#upfile').each(function(idx, item) {
						if ($(this).val().length < 1) {
							alert($(this).prev().html() + "을 입력하세요");
							$(this).focus();
							event.preventDefault();
							return false; //each 탈출
						}

					}); */

		});

		$('#btlist').click(function() {
			location.href = "<c:url value='/notice/noticeList'/>";
		});

	});

	$(function() {
		var privacy_editor = CKEDITOR.replace("termsContent", {
			filebrowserUploadUrl : '${contextPath}/privacies/imgUpload'
		});
		$("#privacyRegit").click(function() {
			privacyRegit(privacy_editor);
		});
	});
	function privacyRegit(privacy_editor) {
		var category = $('input[name=category]').val();
		var version = $("#version").val();
		var postAt = $("#postAt").val();
		if (version.trim() == '') {
			alert("버전을 입력해주세요.");
			return false;
		}
		if (postAt.trim() == '') {
			alert("게시일을 선택해주세요.");
			return false;
		}
		if (privacy_editor.getData().trim() == '') {
			alert("내용을 입력해주세요.");
			return false;
		}
		$("#privacyDto").submit();
	}
</script>
<c:choose>
	<c:when test="${!empty sessionScope.hId }">
		<%@ include file="../inc/bottom_host.jsp"%>
	</c:when>
	<c:when test="${!empty sessionScope.mId }">
		<%@ include file="../inc/bottom.jsp"%>
	</c:when>
	<c:when test="${!empty sessionScope.adId }">
		<%@ include file="../inc/bottom_admin.jsp"%>
	</c:when>
	<c:otherwise>
		<%@ include file="../inc/bottom.jsp"%>
	</c:otherwise>
</c:choose>