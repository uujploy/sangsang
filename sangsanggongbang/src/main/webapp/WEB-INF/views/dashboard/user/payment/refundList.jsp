<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../../inc/new_top_user.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function(){
		var startTime = new Date('${map["C_START_TIME"]}');
		var d = new Date();
		var bool = true;
		if(startTime - d > 172800000){
			bool = false;
		}
	});
	
	function pageFunc(curPage){
		$('input[name=currentPage]').val(curPage);
		$('form[name=frmPage]').submit();
	}

	
</script>

<form name="frmPage" method="post" 
	action="<c:url value='/dashboard/user/payment/myPayment'/>">
	<input type="hidden" name="currentPage">
</form>

<div class="section section-lg bg-soft">
            <div class="container">
                <div class="row pt-5 pt-md-0">
                
                    <div class="col-12 col-md-4 d-none d-lg-block">
    <!-- Navigation -->
    <div class="card border-light p-2">
        <div class="card-body p-2">
            <div class="profile-thumbnail small-thumbnail mx-auto">
            	<c:if test="${!empty sessionScope.mFilename }">
                	<img src="<c:url value='/resources/file_upload/${sessionScope.mFilename }'/>" class="card-img-top rounded-circle border-white" alt="Joseph Portrait"
                	onerror="this.src='${sessionScope.mFilename }'">
                </c:if>
                <c:if test="${empty sessionScope.mFilename }">
                	<img src="<c:url value='/resources/file_upload/default.png'/>" class="card-img-top rounded-circle border-white" alt="Joseph Portrait">
                </c:if>
            </div>
            <h2 class="h5 font-weight-normal text-center mt-3 mb-0">${sessionScope.mNickname}</h2>
            <div class="list-group dashboard-menu list-group-sm mt-4">
            	<a href="<c:url value='/dashboard/user/payment/myAccount'/>" class="d-flex list-group-item list-group-item-action">내 정보조회 <span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="<c:url value='/member/memberEditChkPwd'/>" class="d-flex list-group-item list-group-item-action">회원정보 수정<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="<c:url value='/dashboard/user/payment/myPayment'/>" class="d-flex list-group-item list-group-item-action ">내 결제내역<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="<c:url value='/dashboard/user/payment/refundList'/>" class="d-flex list-group-item list-group-item-action active">환불내역조회<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="<c:url value='/member/interestClass'/>" class="d-flex list-group-item list-group-item-action">내 관심클래스<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
                <a href="./messages.html" class="d-flex list-group-item list-group-item-action  border-0">Messages<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
            </div>
        </div>
    </div>
</div>
<div class="col-12 d-lg-none">
    <div class="card bg-white border-light mb-4 mb-lg-5">
        <div class="card-body">
            <div class="row align-items-center">
                <div class="col-10 d-flex">
                    <a href="./account.html" class="list-group-item list-group-item-action border-0 ">Overview</a>
                    <a href="./settings.html" class="list-group-item list-group-item-action border-0  active ">Settings</a>
                    <a href="./my-items.html" class="list-group-item list-group-item-action d-none d-sm-block border-0 ">My Items</a>
                    <a href="./security.html" class="list-group-item list-group-item-action d-none d-md-block border-0 ">Security</a>
                </div>
                <div class="col-2 d-flex justify-content-center">
                    <div class="btn-group dropleft">
                        <button class="btn btn-link dropdown-toggle dropdown-toggle-split mr-2 m-0 p-0" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="icon icon-sm">
                                <span class="fas fa-ellipsis-h icon-secondary fa-lg"></span>
                            </span>
                            <span class="sr-only">Toggle Dropdown</span>
                        </button>
                        <div class="dropdown-menu">
                            <a href="./my-items.html" class="list-group-item list-group-item-action d-sm-none border-0 ">My Items</a>
                            <a href="./security.html" class="list-group-item list-group-item-action d-md-none border-0 ">Security</a>
                            <a href="./billing.html" class="list-group-item list-group-item-action border-0 ">Billing</a>
                            <a href="./messages.html" class="list-group-item list-group-item-action border-0 ">Messages</a> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
  					<div class="col-12 col-lg-8">
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="tab-grid-1" role="tabpanel"
                                aria-labelledby="tab-grid-1-tab">
                                <h1 class="h3"><i class="fas fa-angle-double-right"></i>${sessionScope.mNickname}님의 수강취소 및 환불내역입니다.</h1>
                                <h5 class="h6 mb-3">클래스 종료 후 2일 내의 결제내역에 한하여 환불요청이 가능합니다.</h5>
                                <div class="row justify-content-center">
                                    <div class="col-12 col-sm-10 col-md-6 col-lg-12 mb-4">
                                    <c:forEach var = "map" items="${list }">
                                   
                                        <div class="card border-light mb-4 animate-up-5">
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-12 col-lg-6 col-xl-5">
                                                 	<a href="<c:url value='/class/detail?cNo=${map["C_NO"] }&categoryName=${map["CATEGORYNAME"] }&hNo=${map["H_NO"]}'/>">
                                                        <img src="<c:url value='/resources/file_upload/${map["THUMBNAIL"] }'/>" alt="private office" class="card-img p-2 rounded-xl" style="width: 290px; height:192px">
                                                    </a>
                                                </div>
                                                <div class="col-12 col-lg-6 col-xl-7">
                                                    <div class="card-body p-3 p-md-1 mb-1">
                                                        <h4 class="h5">${map['C_NAME'] }</h4>
                                                        <fmt:formatDate var="today" value="${now }" pattern="yyyyMMdd" />
                                                        <fmt:formatDate var="startTime" value="${map['C_START_TIME']}" pattern="yyyyMMdd" />
                                                        
                                               			<ul class="list-group mb-2">
                                                            <li class="list-group-item small p-0 mb-1"><i class="fas fa-calendar-alt"></i>&nbsp;&nbsp;&nbsp;결제일:&nbsp;&nbsp;&nbsp;
                                                            <fmt:formatDate value='${map["PAYDATE"] }' pattern="yyyy-MM-dd"/></li>
                                                            <li class="list-group-item small p-0"><i class="fas fa-chalkboard-teacher"></i>&nbsp;&nbsp;진행일:&nbsp;
                                                            <fmt:formatDate value='${map["C_START_TIME"] }' pattern="yyyy-MM-dd"/></li>
                                                       	</ul>
                                                        <div class="d-flex justify-content-between">
                                                            <div class="col pl-0">
                                                                <span class="text-muted font-small d-block">클래스가격</span>
                                                                <span class="h6 text-dark font-weight-bold">
                                                                <fmt:formatNumber value="${map['C_PRICE'] }" pattern="#,###"/>원</span>
                                                            </div>
                                                            <div class="col">
                                                                <span class="text-muted font-small d-block">결제인원</span>
                                                                <span class="h6 text-dark font-weight-bold">${map['QTY'] }명</span>
                                                            </div>
                                                            <div class="col">
                                                                <span class="text-muted font-small d-block">총 결제금액</span>
                                                                <span class="h6 text-dark font-weight-bold">
                                                                <fmt:formatNumber value="${map['C_PRICE'] * map['QTY'] }" pattern="#,###"/>원
                                                                </span>
                                                            </div>
                                                            <div class="col">
                                                                <span class="text-muted font-small d-block">환불결과</span>
                                                                <span class="h6 text-dark font-weight-bold">환불 완료</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                       </c:forEach>
                                    </div>
                            	</div>
                            </div>
                         </div>
                         <c:if test="${pagingInfo.totalRecord >5 }">
                         <div style="width: 50%; margin: 0 auto;">
                     <nav aria-label="Page navigation example" style="margin: 0 auto;">
                     <div style="margin: 0 auto;">
                      <ul class="pagination">
		             <c:if test="${pagingInfo.firstPage>1 }">
						 <li class="page-item">
				            <a class="page-link" href="#" onclick="pageFunc(${pagingInfo.firstPage-1})">Previous</a>
				         </li>
					</c:if>
					<c:forEach var="i" begin="${pagingInfo.firstPage }" 
					end="${pagingInfo.lastPage }">
						<c:if test="${i==pagingInfo.currentPage }">
							 <li class="page-item active">
					            <a class="page-link" href="#">${i }</a>
					        </li>
						</c:if>
						<c:if test="${i!=pagingInfo.currentPage }">						
							<li class="page-item">
					            <a class="page-link" href="#" onclick="pageFunc(${i})">${i }</a>
					        </li>
						</c:if>
					</c:forEach>
						
					<c:if test="${pagingInfo.lastPage<pagingInfo.totalPage }">
						<li class="page-item">
				            <a class="page-link" href="#" onclick="pageFunc(${pagingInfo.lastPage+1})">Next</a>
				         </li>
					</c:if>
					
					</ul>
					</div>
					</nav>
					</div>
					</c:if>
                  </div>
				</div>
             </div>
          </div>
       

<%@ include file="../../../inc/bottom.jsp"%>