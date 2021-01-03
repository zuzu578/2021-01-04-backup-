package com.exhibition.project.BoardDao;

import java.util.ArrayList;

import com.exhibition.project.BoardDto.BoardDto;




public interface BoardDao {
	
	//게시물 오름차 순으로 정렬 //
	public ArrayList<BoardDto> ViewDescList();
	//게시물을 내림차순으로 정렬 //
	public ArrayList<BoardDto> ViewAscList();
	//최근게시물보기//
	public ArrayList<BoardDto> ViewDateDsc();
	//오래된 게시물 보기 //
	public ArrayList<BoardDto> ViewDateAsc();
	//제목으로 검색한 내용을 리스트로 반환해주는 함수 //
	public ArrayList<BoardDto> SearchBoard(String boardtopic);
	//유저의 최근 활동시간 구하기
	public String userDate(String userid);
	//유저가 있는지 없는지 체크하기//
	public int memberCheck(String userid);
	//유저1위 외의 내용들을 리스트에 출력
	public ArrayList<BoardDto> UserRanking();
	//이럴리없어 ..//
	public BoardDto board_if(String userid);
	//가장많은 조회수를 받은 유저 가저오기 //
	public String firstRanking();
	//가장 많은 조회수를 받은 유저의 조회수 가져오기 //
	public String firstRankingNclick();
	//조회수가 많은 유저의 게시물 총 갯수를 가져오기 //
	public String RankingCount(String rankingid);
	//게시판 유저 명수 구하기 (ex: 총 n명의 유저가 있습니다)
	public int UserCount();
	public int userCount(String userid);
	public ArrayList<BoardDto> list( );
	public ArrayList<BoardDto> previous();
	public ArrayList<BoardDto> userlist(String userid);
	public BoardDto findUser(String userid);
	public void write(String userid, String boardtopic, String board_comment);
	public BoardDto board_view(int board_num);
	//public BDto contentView(int bId);
	public BoardDto listPage();
	public void Doboard_update(int board_num,String userid , String boardtopic ,String board_comment);
	public void Doboard_delete(int board_num);
	public void upHit(int board_num);
	public int loginCheck(String id, String passwd);
	
	
	
	public void reply(String userid, String boardtopic, String board_comment, int bGroup, int bStep, int bIndent);
	public void replyShape(int bGroup, int bStep);
	public BoardDto contentView(int board_num);
	//report//
	public void try_report(String userid, String boardTitle, String board_comment,String report_comment);



	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	public BDto reply_view(int bId);
//	public void reply(String bName,String bTitle,String bContent,int bGroup,int bStep,int bIndent);
//	public void replyShape(int bGroup ,int bStep);
	
	
	
	
	
	
	
}
