package com.green.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.green.service.BoardService;
import com.green.vo.BoardVo;
import com.green.vo.CommentVo;
import com.green.vo.ManagerVo;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	//전체게시판
	@RequestMapping("/boardList")
	public String list(Model model) {
		List<BoardVo> list = boardService.selectAll();
		model.addAttribute("list", list);
	
		return "board/boardList";
	}
	
	//상세게시판(상세글+댓글불러오기)
	@RequestMapping("/boardDetail")
	public ModelAndView boardDetail(@RequestParam int num ,Model model) {
		boardService.readCount(num);
		List<CommentVo> lists = boardService.selectTargetComment(num);
		BoardVo board = boardService.selectByNum(num);
		model.addAttribute("lists",lists);
		return new ModelAndView("board/boardDetail","board", board);
	}
	
	//게시판쓰기
	@GetMapping("/boardWrite")
	public String boardWrite(/*@ModelAttribute BoardVo board*/) {
//		boardDao.boardWrite(board);
		return "board/boardWrite";
	}
	
	//게시판쓰기
	@PostMapping("/boardWrite")
	public String boardWrite2(@ModelAttribute BoardVo board) {
		boardService.boardWrite(board);
		return "redirect:/boardList";
	}
	
	//게시판수정
	@GetMapping("/boardUpdate")
	public String boardUpdate(Model model,@RequestParam int num) {
		BoardVo board = boardService.selectByNum(num);
		model.addAttribute("board",board);
		return "board/boardUpdateForm";
	}
	
	//게시판수정
	@PostMapping("/boardUpdate")
	public String boardUpdate(@ModelAttribute BoardVo bVo,@RequestParam int num,Model model) {
		boardService.boardUpdate(bVo);
		model.addAttribute("num",num);
		return "redirect:/boardDetail";
	}
	
	//게시판삭제
	@RequestMapping("/boardDelete")
	public String boardDelete(@RequestParam int num) {
		boardService.boardDelete(num);
		return "redirect:/boardList";
	}
	
	//댓글쓰기
	@PostMapping("/commentWrite")
	public String commentWrite(@ModelAttribute CommentVo cVo,Model model,@RequestParam int num) {
		boardService.commentWrite(cVo);
		model.addAttribute("num",num);
		return "redirect:/boardDetail";
	}
		
	//댓글수정
	@GetMapping("/commentUpdate")
	public String commentUpdate(Model model,@RequestParam int cno) {
		List<CommentVo> lists = boardService.selectTargetComment(cno);
		//System.out.println("num : " + num );
		model.addAttribute("lists",lists);
		return "board/commentUpdate";
	}
	
	@PostMapping("/commentUpdate")
	@ResponseBody
	public String commentUpdate(@RequestParam String nickname,@ModelAttribute CommentVo cVo,@RequestParam int num,Model model) {
		boardService.commentUpdate(cVo);
		model.addAttribute("num",num);
		return "redirect:/boardDetail";
	}
	
	//댓글 삭제
	@RequestMapping("/commentDelete")
	public String commentDelete(@RequestParam int cno,@RequestParam int num,Model model) {
		boardService.commentDelete(cno);
		model.addAttribute("num",num);
		return "redirect:/boardDetail";
	}
	
	//관리자게시판(공지사항)
	@RequestMapping("/managerBoardList")
	public String manager(Model model) {
		List<ManagerVo> manager = boardService.selectAllmanager();
		model.addAttribute("manager", manager);
		return "board/managerBoardList";
	}
	
	//관리자상세게시판(상세글)
	@RequestMapping("/managerWrite")
	public ModelAndView managerDetail(@RequestParam int MgNum ,Model model) {
		boardService.readCount(MgNum);
		ManagerVo mVo = boardService.selectByMgNum(MgNum);
		return new ModelAndView("board/managerDetail","mVo", mVo);
	}
	
	//공지사항쓰기
	@GetMapping("/managerWrite")
	public String managerWrite(/*@ModelAttribute BoardVo board*/) {
//			boardDao.boardWrite(board);
		return "board/managerWrite";
	}
	
	//공지사항쓰기
	@PostMapping("/managerWrite")
	public String managerWrite2(@ModelAttribute ManagerVo mVo) {
		boardService.managerWrite(mVo);
		return "redirect:/managerBoardList";
	}
	
	//게시판수정
	@GetMapping("/ManagerUpdate")
	public String ManagerUpdate(Model model,@RequestParam int MgNum) {
		ManagerVo mVo = boardService.selectByMgNum(MgNum);
		model.addAttribute("mVo",mVo);
		return "board/ManagerUpdateForm";
	}
	
	//게시판수정
	@PostMapping("/ManagerUpdate")
	public String ManagerUpdate(@ModelAttribute ManagerVo mVo,@RequestParam int MgNum,Model model) {
		boardService.managerUpdate(mVo);
		model.addAttribute("MgNum",MgNum);
		return "redirect:/ManagerDetail";
	}
	
	//공지사항삭제
	@RequestMapping("/managerDelete")
	public String managerDelete(@RequestParam int MgNum) {
		boardService.managerDelete(MgNum);
		return "redirect:/managerBoardList";
	}
	
	
	//페이징 삭제시
}
