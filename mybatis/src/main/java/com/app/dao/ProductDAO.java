package com.app.dao;

import java.awt.SplashScreen;
import java.util.List;
import java.util.Optional;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.ProductVO;

public class ProductDAO {
	public SqlSession seqSession;
	
	public ProductDAO() {
		seqSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	상품추가
	public void insert(ProductVO productVO) {
		seqSession.insert("product.insert", productVO);
	}
	
//	상품 전체 조회
	public List<ProductVO> selectAll() {
		return seqSession.selectList("product.selectAll");
	}
	
//	상품 단일 조회
	public Optional<ProductVO> select(Long id) {
		return Optional.ofNullable(seqSession.selectOne("product.select", id));
	}
	
//	상품 수정
	public void update(ProductVO productVO) {
		seqSession.update("product.update", productVO);
	}
	
//	상품 삭제
	public void dalete(Long id) {
		seqSession.delete("product.delete", id);
	}
	
	
}
