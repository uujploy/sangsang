package com.gr.ssgb.recommendation.controller;

import java.util.ArrayList;
import java.util.List;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gr.ssgb.common.ConstUtil;
import com.gr.ssgb.common.PaginationInfo;
import com.gr.ssgb.common.SearchVO;
import com.gr.ssgb.recommendation.model.RecommendationService;
import com.gr.ssgb.recommendation.model.RecommendationVO;

@Controller
@RequestMapping("/recommendation")
public class RecommendController {

	private static final Logger logger = LoggerFactory.getLogger(RecommendController.class);

	private final RecommendationService recommendationService;

	@Autowired
	public RecommendController(RecommendationService recommendationService) {
		this.recommendationService = recommendationService;
		logger.info("불편사항 생성자 주입");
	}


	
	@GetMapping("/recommendWrite")
	public String recommendationWrite() {
		logger.info("불편사항 글 작성");
		return "/recommendation/recommendWrite";
	}

	@PostMapping("/recommendWrite")
	public String recommendationWrite(@ModelAttribute RecommendationVO vo, Model model) {
		logger.info("불편사항 글 작성 처리, 불편사항 파라미터 vo={}", vo);

		int cnt = recommendationService.insertRecommendation(vo);
		logger.info("불편사항 작성 성공여부 cnt={}", cnt);
		String msg = "불편사항 작성에 실패했습니다", url = "/recommendation/recommendList";
		if (cnt > 0) {
			msg = "불편사항 작성에 성공했습니다";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "common/message";
	}
	
	/*
	 * @GetMapping("/host/hostRecommendWrite") public String
	 * hostRecommendationWrite() { logger.info("불편사항 글 작성"); return
	 * "/recommendation/host/hostRecommendList"; }
	 * 
	 * 
	 * @PostMapping("/host/hostRecommendWrite") public String
	 * hostRecommendationWrite(@ModelAttribute RecommendationVO vo, Model model) {
	 * logger.info("불편사항 글 작성 처리, 불편사항 파라미터 vo={}", vo);
	 * 
	 * int cnt = recommendationService.insertRecommendation(vo);
	 * logger.info("불편사항 작성 성공여부 cnt={}", cnt); String msg = "불편사항 작성에 실패했습니다", url
	 * = "/recommendation/host/hostRecommendList"; if (cnt > 0) { msg =
	 * "불편사항 작성에 성공했습니다"; } model.addAttribute("msg", msg);
	 * model.addAttribute("url", url);
	 * 
	 * return "common/message"; }
	 */

//	@PostMapping("/recommendWrite")
//	public String recommendationWrite(@ModelAttribute RecommendationVO vo, HttpServletRequest request) {
//		logger.info("불편사항 글 작성 처리, 불편사항 파라미터 vo={}", vo);
//		
//		//파일 업로드 처리
//		String fileName="", originName="";
//		long fileSize=0;
//		int pathFlag=ConstUtil.UPLOAD_FILE_FLAG;
//		try {
//			List<Map<String,Object>> fileList = fileUploadUtil.fileUpload(request, pathFlag);
//			for(int i=0;i<fileList.size();i++) {
//				Map<String, Object> map = fileList.get(i);
//				fileName =(String) map.get("fileName");
//				originName = (String)map.get("originalFileName");
//				fileSize=(long) map.get("fileSize");
//			}
//			logger.info("파일 업로드 성공, fileName={}",fileName);
//		}catch(IllegalStateException e) {
//			e.printStackTrace();
//		}catch (IOException e) {
//			e.printStackTrace();
//		}

	// 2. 불편사항 목록
	@RequestMapping("/recommendList")
	public String list(@ModelAttribute RecommendationVO recommendationVo, HttpSession session, Model model) {
		logger.info("불편사항 목록 ");
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		pagingInfo.setCurrentPage(recommendationVo.getCurrentPage());

		recommendationVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		recommendationVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("값 셋팅 후 searchVo={}", recommendationVo);

		String mId= (String) session.getAttribute("mId");
		recommendationVo.setmId(mId);
		String adId=(String) session.getAttribute("adId");
		String hId=(String) session.getAttribute("hId");
		recommendationVo.sethId(hId);
		
		logger.info("recommendationVo={}",recommendationVo);
//		List<RecommendationVO> list = recommendationService.selectAllRecommendation(searchVo);
		List<RecommendationVO> list = new ArrayList<RecommendationVO>();
		int totalRecord = 0;
		if (hId!=null && !hId.isEmpty()) {
			list = recommendationService.selectAllHostRecommendation(recommendationVo);
			totalRecord = recommendationService.selectTotalHostRecord(recommendationVo);
		} else if (adId!=null && !adId.isEmpty()) {
			list = recommendationService.selectAllRecommendation(recommendationVo);
			totalRecord = recommendationService.selectTotalRecord(recommendationVo);
		} else { //비회원은 멤버처럼 나오게
			list = recommendationService.selectAllMemberRecommendation(recommendationVo);
			totalRecord = recommendationService.selectTotalMemberRecord(recommendationVo);
		}
		
		logger.info("전체조회 결과 list.size={}", list.size());
		logger.info("전체조회 결과 list={}", list);

		pagingInfo.setTotalRecord(totalRecord);
		
		model.addAttribute("pagingInfo", pagingInfo);
		model.addAttribute("list", list);

		return "/recommendation/recommendList";
	}

	// 3. 불편사항 상세보기
	@RequestMapping("/recommendDetail")
	public String detail(@RequestParam(defaultValue = "0") int recoNo, HttpServletRequest request, Model model) {
		logger.info("불편사항 상세보기 파라미터 recoNo={}", recoNo);

		if (recoNo == 0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/recommendation/recommendList");

			return "common/message";
		}
		RecommendationVO vo = recommendationService.selectByNoRecommendation(recoNo);
		logger.info("상세보기 결과 vo={}", vo);

		model.addAttribute("vo", vo);
		return "/recommendation/recommendDetail";
	}

	// 4.불편사항 수정하기
	@GetMapping("/recommendUpdate")
	public String update_get(@RequestParam(defaultValue = "0") int recoNo, HttpServletRequest request, Model model) {
		logger.info("수정화면 파라미터 recoNo={}", recoNo);
		if (recoNo == 0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/recommendation/recommendUpdate");
			return "common/message";
		}
		RecommendationVO vo = recommendationService.selectByNoRecommendation(recoNo);
		logger.info("수정화면, 조회결과 vo={}", vo);
		
		model.addAttribute("vo",vo);
		return "recommendation/recommendUpdate";
	}

	@PostMapping("/recommendUpdate")
	public String update_post(@ModelAttribute RecommendationVO vo, Model model) {
		logger.info("글 수정 vo={}", vo);

		if (vo.getRecoNo() == 0) {
			model.addAttribute("msg", "잘못된 url입니다");
			model.addAttribute("url", "/recommendation/recommendList");

			return "/common/message";
		}
		int cnt = recommendationService.updateRecommendation(vo);
		logger.info("수정 성공 여부 cnt={}", cnt);
		String msg = "수정에 실패했습니다", url = "/recommendation/recommendList";
		if (cnt > 0) {
			msg = "수정에 성공했습니다.";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "/common/message";
	}

	// 5. 불편사항 삭제하기
	/*
	 * @GetMapping("/recommendDelete") public String
	 * delete_get(@RequestParam(defaultValue = "0") int recoNo, Model model) {
	 * logger.info("삭제화면"); if (recoNo == 0) { model.addAttribute("msg",
	 * "잘못된 url입니다."); model.addAttribute("url", "/recommendation/recommendList");
	 * 
	 * return "common/message"; }
	 * 
	 * return "/recommendation/recommendDelete"; }
	 */

	@RequestMapping("/recommendDelete")
	public String delete_post(@ModelAttribute RecommendationVO vo, @RequestParam(defaultValue = "0") int recoNo,
			HttpServletRequest request, Model model) {
		logger.info("삭제 처리, 파라미터 vo={}, recoNo={}", vo, recoNo);

		String msg = "글삭제 실패", url = "/recommendation/recommendDelete?recoNo=" + recoNo;
		// 삭제 - 저장 프로시저 이용

		recommendationService.deleteRecommendation(recoNo);
		msg = "글삭제되었습니다.";
		url = "/recommendation/recommendList";

		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "/common/message";
	}
	
	//6. 답글 남기기
	@GetMapping("/recommendReply")
	public String reply_get(@RequestParam(defaultValue = "0") int recoNo,
			Model model) {	
		logger.info("답변화면, 파라미터 no={}", recoNo);
		
		if(recoNo==0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/recommendation/recommendReply");
			
			return "/common/message";			
		}
		
		RecommendationVO vo=recommendationService.selectByNoRecommendation(recoNo);
		logger.info("답변화면-조회 결과 vo={}", vo);
		
		model.addAttribute("vo", vo);
		
		return "/recommendation/recommendReply";
	}
	
	@PostMapping("/recommendReply")
	public String reply_post(@ModelAttribute RecommendationVO vo) {
		logger.info("답변하기, 파라미터 vo={}", vo);
		
		int cnt=recommendationService.reply(vo);
		logger.info("답변하기 결과 cnt={}", cnt);
		
		
		return "redirect:/recommendation/recommendList";
	}
}