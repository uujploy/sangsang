<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../inc/top.jsp" %>

<div class="section section-md bg-white text-black pt-0 line-bottom-light">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-12 col-lg-8  mt-6">
        <div>
          <br>
          <form method="post" name="qaForm" onsubmit="return onSubmit(this);">
            <input type="hidden" name="cNo">
            <input type="hidden" name="mNo">
            <label class="h5 mb-4" for="exampleFormControlTextarea1"><span class="badge badge-md badge-primary text-uppercase mr-2">Q&A</span> </label>
            <input type="text"
                   name="qaTitle"
                   class="form-control border border-light-gray"
                   placeholder="제목을 입력해주세요"/>
            <textarea
                    name="qaContent"
                    class="form-control border border-light-gray"
                    id="exampleFormControlTextarea1"
                    placeholder="내용을 입력해주세요"
                    rows="6"
                    data-bind-characters-target="#charactersRemaining"
                    maxlength="1000"></textarea>
            <div class="d-flex justify-content-between mt-3">
              <small class="font-weight-light text-dark"><span id="charactersRemaining">
                                          <!-- this will be filled with 200 from the textarea's maxlength --></span>
                / 1000자 이하</small>
              <button type="submit" class="btn btn-primary animate-up-2" >등록</button>
            </div>
          </form>
          <div class="mt-5">
            <c:forEach var="item" items="${list}" varStatus="vs">
            <div class="card bg-soft border-light rounded p-4 mb-4">
              <div class="d-flex justify-content-between mb-4">
                  <span class="font-small">
                    <a href="#">
                      <img class="avatar-sm img-fluid rounded-circle mr-2"
                           src="<c:url value="/resources"/>/assets/img/team/profile-picture-1.jpg" alt="avatar">
                      <span class="font-weight-bold">${item.memberVO.mName}</span>
                    </a>
                  <span class="ml-2"><fmt:formatDate value="${item.qaRegdate}" pattern="YYYY-MM-DD" /></span>
                  </span>
              </div>
              <p class="m-0">
                ${item.qaTitle}
                <br><br>
                ${item.qaContent}
              </p>
              <div class="mt-4 mb-3 d-flex justify-content-between">
                <div class="btn-block text-right">
                  <button type="submit" class="btn btn-xs btn-primary animate-up-2" >수정</button>
                  <button type="submit" class="btn btn-xs btn-danger animate-up-2" >삭제</button>
                </div>
              </div>
            </div>
            </c:forEach>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<script>
  function onSubmit(_form) {
    //

    if(!_form.qaTitle.value) {
      alert('제목을 입력하여 주시기 바랍니다');
      return false;
    }
    if(!_form.qaContent.value) {
      alert('내용을 입력하여 주시기 바랍니다');
      return false;
    }




    _form.cNo.value = '17'; // 클래스 번호
    _form.mNo.value = '75'; // 회원번호

    _form.method = 'post';
    _form.action = '<c:url value="/qa/write"/>';
    _form.sumbit();
  }
</script>

<%@ include file="../inc/bottom.jsp" %>