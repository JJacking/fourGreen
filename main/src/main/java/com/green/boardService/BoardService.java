package com.green.boardService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.green.boardDao.BoardDao;
import com.green.vo.BoardVo;
import com.green.vo.CommentVo;
import com.green.vo.ManagerVo;

public class BoardService {
	
	
	@Autowired
	private BoardDao boardDao;
	
	//전체읽어오기
	public List<BoardVo> selectAll(){
		return boardDao.selectAll(); 
	}
	
	//조회수
	public void readCount(int num) {
		boardDao.readCount(num);
	}
	
	//상세보기
	public BoardVo selectByNum(int num) {
		return boardDao.selectByNum(num);
	}
	
	//글쓰기
	public void boardWrite(BoardVo board) {
		boardDao.boardWrite(board);
	}
		
	//글수정
	public void boardUpdate(BoardVo bVo) {
		boardDao.boardUpdate(bVo);
	}
	
	//글삭제
	public void boardDelete(int num) {
		boardDao.boardDelete(num);
	}
	
	//댓글작성
	public void commentWrite(CommentVo cVo) {
		boardDao.commentWrite(cVo);
	}
	
	//댓글읽어오기
	public List<CommentVo> selectTargetComment(int num){
		return boardDao.selectTargetComment(num);
	}
	
	//댓글수정
	public void commentUpdate(CommentVo cVo) {
		boardDao.commentUpdate(cVo);
	}
	
	//댓글삭제
	public void commentDelete(int cno) {
		boardDao.commentDelete(cno);
	}

	//전체읽어오기
	public List<ManagerVo> selectAllmanager(){
		return boardDao.selectAllmanager(); 
	}
	
	//조회수
	public void readCountMgBoard(int MgNum) {
		boardDao.readCountMgBoard(MgNum);
	}
	
	//상세보기
	public ManagerVo selectByMgNum(int MgNum) {
		return boardDao.selectByMgNum(MgNum);
	}
	
	//글쓰기
	public void managerWrite(ManagerVo mVo) {
		boardDao.managerWrite(mVo);
	}
		
	//글수정
	public void managerUpdate(ManagerVo mVo) {
		boardDao.managerUpdate(mVo);
	}
	
	//글삭제
	public void managerDelete(int MgNum) {
		boardDao.managerDelete(MgNum);
	}
}
