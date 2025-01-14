package com.gr.ssgb.notice.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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
import com.gr.ssgb.common.FileUploadUtil;
import com.gr.ssgb.common.PaginationInfo;
import com.gr.ssgb.common.SearchVO;
import com.gr.ssgb.notice.model.NoticeService;
import com.gr.ssgb.notice.model.NoticeVO;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);

	private final NoticeService noticeService;
	private final FileUploadUtil fileUploadUtil;

	@Autowired
	public NoticeController(NoticeService noticeService, FileUploadUtil fileUploadUtil) {
		this.noticeService = noticeService;
		this.fileUploadUtil = fileUploadUtil;
	}

	@GetMapping("/noticeWrite")
	public void noticeWrite() {
		logger.info("공지작성 화면 등장");

	}

	@PostMapping("/noticeWrite")
	public String noticeWrite(@ModelAttribute NoticeVO vo, HttpServletRequest request, Model model) {
		logger.info("공지작성 파라미터 vo={}", vo);

		String fileName = "", originName = "";
		long fileSize = 0;
		int pathFlag = ConstUtil.UPLOAD_IMAGE_FLAG;
		try {
			List<Map<String, Object>> fileList = fileUploadUtil.fileUpload(request, pathFlag);
			for (int i = 0; i < fileList.size(); i++) {
				Map<String, Object> map = fileList.get(i);
				fileName = (String) map.get("fileName");
				originName = (String) map.get("originalFileName");
				fileSize = (long) map.get("fileSize");
			}

			logger.info("파일 업로드 성공, fileName={}", fileName);

		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		vo.setNoticeImgUrl(fileName);

		int cnt = noticeService.insertNotice(vo);
		logger.info("공지작성 성공여부 cnt={}", cnt);
		String msg = "공지작성에 실패했습니다", url = "/notice/noticeList";
		if (cnt > 0) {
			msg = "공지작성에 성공했습니다";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "common/message";
	}

	@RequestMapping("/noticeList")
	public String noticeList(@ModelAttribute SearchVO searchVo, HttpSession session, Model model) {
		logger.info("공지화면 등장");
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(4);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());

		searchVo.setRecordCountPerPage(4);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("searchVo={}", searchVo);

		String adId=(String) session.getAttribute("adId");
		String hId=(String) session.getAttribute("hId");
		
		List<NoticeVO> list = new ArrayList<NoticeVO>();
		int totalRecord = 0;
		if (hId!=null && !hId.isEmpty()) {
			list = noticeService.selectNoticeHostAll(searchVo);
			totalRecord = noticeService.selectTotalHostRecord(searchVo);
		} else if (adId!=null && !adId.isEmpty()) {
			list = noticeService.selectNoticeAll(searchVo);
			totalRecord = noticeService.selectTotalRecord(searchVo);
		} else { //비회원은 멤버처럼 나오게
			list = noticeService.selectNoticeMemberAll(searchVo);
			totalRecord = noticeService.selectTotalMemberRecord(searchVo);
		}
		logger.info("공지화면 총 list.size={}", list.size());

		pagingInfo.setTotalRecord(totalRecord);

		model.addAttribute("pagingInfo", pagingInfo);
		model.addAttribute("list", list);

		return "notice/noticeList";
	}
	
	@RequestMapping("/hostNotice")
	public String hostNotice(@ModelAttribute SearchVO searchVo, HttpSession session, Model model) {
		logger.info("공지화면 등장");
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(4);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());

		searchVo.setRecordCountPerPage(4);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("searchVo={}", searchVo);

		String adId=(String) session.getAttribute("adId");
		String hId=(String) session.getAttribute("hId");
		
		logger.info("hId={}",hId);
		List<NoticeVO> list = new ArrayList<NoticeVO>();
		int totalRecord = 0;
		if (hId!=null && !hId.isEmpty()) {
			list = noticeService.selectNoticeHostAll(searchVo);
			totalRecord = noticeService.selectTotalHostRecord(searchVo);
		} else if (adId!=null && !adId.isEmpty()) {
			list = noticeService.selectNoticeAll(searchVo);
			totalRecord = noticeService.selectTotalRecord(searchVo);
		} else { //비회원은 멤버처럼 나오게
			list = noticeService.selectNoticeMemberAll(searchVo);
			totalRecord = noticeService.selectTotalMemberRecord(searchVo);
		}
		logger.info("공지화면 총 list.size={}", list.size());

		pagingInfo.setTotalRecord(totalRecord);

		model.addAttribute("pagingInfo", pagingInfo);
		model.addAttribute("list", list);

		return "notice/hostNotice";
	}
	@GetMapping("/noticeDetail")
	public String noticeDetail(@RequestParam(defaultValue = "0") int noticeNo, Model model) {
		logger.info("공지사항 디테일 화면 등장");

		if (noticeNo == 0) {
			model.addAttribute("msg", "잘못된 url입니다");
			model.addAttribute("url", "/notice/noticeList");

			return "/common/message";
		}
		int cnt = noticeService.updateReadCount(noticeNo);
		NoticeVO vo = noticeService.selectNoticeByNo(noticeNo);
		NoticeVO PNVo = noticeService.selectPreNnexTitle(noticeNo);
		logger.info("공지사항 결과값 vo={},PNVo={}", vo, PNVo);

		model.addAttribute("vo", vo);
		model.addAttribute("PNVo", PNVo);

		return "notice/noticeDetail";
	}

	@GetMapping("/noticeEdit")
	public String noticeEdit_get(@RequestParam(defaultValue = "0") int noticeNo, HttpServletRequest request,
			Model model) {
		logger.info("공지사항 수정화면 noticeNo={}", noticeNo);
		NoticeVO vo = noticeService.selectNoticeByNo(noticeNo);
		logger.info("공지사항 수정파라미터 vo={}", vo);

		model.addAttribute("vo", vo);

		return "/notice/noticeEdit";
	}

	@PostMapping("/noticeEdit")
	public String noticeEdit_post(@ModelAttribute NoticeVO vo, HttpServletRequest request,
			@RequestParam String oldFileName, Model model) {
		logger.info("글 수정 vo={}", vo);

		if (vo.getNoticeNo() == 0) {
			model.addAttribute("msg", "잘못된 url입니다");
			model.addAttribute("url", "/notice/noticeList");

			return "/common/message";
		}

		String newsUploadname = "";
		try {
			List<Map<String, Object>> fileList = fileUploadUtil.fileUpload(request, ConstUtil.UPLOAD_IMAGE_FLAG);
			if (fileList != null && !fileList.isEmpty()) {
				for (Map<String, Object> fileMap : fileList) {
					newsUploadname = (String) fileMap.get("fileName");
					vo.setNoticeImgUrl(newsUploadname);
				} // for
			} else {
				vo.setNoticeImgUrl("");
			}
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		int cnt = noticeService.updateNotice(vo);
		logger.info("수정 성공 여부 cnt={}", cnt);
		String msg = "수정에 실패했습니다", url = "/notice/noticeList";
		if (cnt > 0) {
			msg = "수정에 성공했습니다.";

			if (newsUploadname != null && !newsUploadname.isEmpty() && oldFileName != null && !oldFileName.isEmpty()) {
				String upPath = fileUploadUtil.getUploadPath(ConstUtil.UPLOAD_IMAGE_FLAG, request);
				File oldFile = new File(upPath, oldFileName);
				if (oldFile.exists()) {
					boolean bool = oldFile.delete();
					logger.info("글수정,파일삭제여부:{}", bool);
				}
			}
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "/common/message";
	}

	@GetMapping("/noticeDelete")
	public String noticeDelete_post(@RequestParam int noticeNo, Model model) {
		logger.info("공지사항 삭제화면 vo={}", noticeNo);

		if (noticeNo == 0) {
			model.addAttribute("msg", "잘못된 url입니다");
			model.addAttribute("url", "/notice/noticeList");

			return "/common/message";
		}

		int cnt = noticeService.deleteNotice(noticeNo);
		logger.info("공지사항 삭제여부 cnt={}", cnt);
		String msg = "공지사항 삭제에 실패했습니다.", url = "/notice/noticeDetail?noticeNo" + noticeNo;
		if (cnt > 0) {
			model.addAttribute("msg", "공지사항 삭제에 성공했습니다.");
			model.addAttribute("url", "/notice/noticeList");
		}

		return "common/message";
	}
}

