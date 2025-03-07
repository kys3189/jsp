package com.app.dao;

import java.util.List;
import java.util.Optional;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.PostVO;

public class PostDAO {
	public SqlSession sqlSession;
	
	public PostDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	게시글 생성
	public List<PostVO> selectAll() {
		return sqlSession.selectList("post.selectAll");
	}
//	게시글 조회
	public Optional<PostVO> select(Long id) {
		return Optional.ofNullable(sqlSession.selectOne("post.select", id));
	}
//	아이디 조회
	public Long selectId() {
		return sqlSession.selectOne("post.selectId");
	}
//	게시글 생성
	public void insert(PostVO postVO) {
		sqlSession.insert("post.insert", postVO);
	}
//	게시글 수정
	public void update(PostVO postVO) {
		sqlSession.update("post.update", postVO);
	}
//	게시글 삭제
	public void delete(Long id) {
		sqlSession.delete("post.delete", id);
	}
	
}
