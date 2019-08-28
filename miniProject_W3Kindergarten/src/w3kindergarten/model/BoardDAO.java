package w3kindergarten.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sun.org.apache.bcel.internal.generic.ALOAD;

import w3kindergarten.model.dto.BoardDTO;
import w3kindergarten.model.util.DBUtil;

public class BoardDAO {

	// 게시판 목록
	public static ArrayList<BoardDTO> getAllBoard() throws SQLException{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<BoardDTO> board = null;
//		System.out.println("BDAO board try 전");
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement("select * from board");
			rset = pstmt.executeQuery();
//			System.out.println("ㅇㄹㅇㄹㅇㄹㅇㄹ"+" "+rset);
			board = new ArrayList<>();
//			System.out.println("BDao getAllboard() while전: " );
			while(rset.next()) {
//				System.out.println(rset);
				board.add(new BoardDTO(rset.getInt(1),rset.getString(2),rset.getString(3),rset.getString(4),rset.getString(5),rset.getString(6),rset.getInt(7)));
			}
//			System.out.println("Bdao getall()");
		}finally {
			DBUtil.close(con, pstmt, rset);
		}
//		System.out.println("Bdao getall(): "+board.get(0).getTitle());
		return board;
	}
	
	// 게시판 작성
	public static boolean writeContent(BoardDTO board) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		boolean result = false;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement("insert into BOARD values(seq_w3kindergarten_Board.nextval, ?, ?, ?, sysdate, sysdate,0)");
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getContent());
			pstmt.setString(3, board.getUserName());
			System.out.println("BDao writeContent() try");
			int i = pstmt.executeUpdate();
			if(i == 1) {
				result = true;
			}
		}finally {
			DBUtil.close(con, pstmt);
		}
		return result;
	}
	
	public static BoardDTO readBoard(String title) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		BoardDTO board = null;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement("SELECT * FROM board WHERE title = ?");
			pstmt.setString(1, title);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				board = new BoardDTO(rset.getInt(1),rset.getString(2),rset.getString(3),rset.getString(4),rset.getString(5),rset.getString(6),rset.getInt(7));
			}
		}finally {
			DBUtil.close(con, pstmt, rset);
		}
		return board;
	}
	
	public static boolean updateBoard(BoardDTO board) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		boolean result = false;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement("UPDATE board set TITLE=?, CONTENT=? where board_no = ?");
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getContent());
			pstmt.setInt(3, board.getBoardNo());
			System.out.println("board.getTitle():"+board.getTitle());
			System.out.println("board.getContent():"+board.getContent());
			System.out.println("board.getBoardNo():"+board.getBoardNo());
			int i = pstmt.executeUpdate();
			System.out.println("sql 완료");
			if(i == 1) {
				result = true; 
				System.out.println("if");
			}
			
		}finally {
			DBUtil.close(con, pstmt);
		}
		System.out.println("result: "+result);
		return result;
	}
	
	
//	 (수정 필요)게시판 리스트 - 글번호, 제목, 내용, 작성자, 댓글번호, 작성자, 작성일(modifyDate), 조회수
//	public static ArrayList<NoticeBoardDTO> getAllBoardContents() throws SQLException{
//		
//		Connection con = null;
//		PreparedStatement pstmt = null;
//		ResultSet rset = null;
//		ArrayList<NoticeBoardDTO> boardList= null;
//		try {
//			con = DBUtil.getConnection();
//			pstmt = con.prepareStatement("SELECT * FROM NOTICE_BOARD");
//			rset = pstmt.executeQuery();
//			boardList = new ArrayList<>();
//			while(rset.next()) {
//				boardList.add(new NoticeBoardDTO(rset.getInt(1),rset.getString(2),rset.getString(3),rset.getInt(4),rset.getString(5),rset.getString(7),rset.getInt(8)));
//			}
//		}finally {
//			DBUtil.close(con, pstmt, rset);
//		}
//		return boardList;
		
//	}
}
