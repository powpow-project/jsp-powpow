package com.app.dao;

import java.util.List;
import java.util.Optional;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.OrderVO;
import com.app.vo.ProductVO;

public class ProductDAO {
	public SqlSession sqlSession;
	
	public ProductDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	상품조회 리스트에 뿌릴 상품추가
	public void insert(ProductVO productVO) {
		sqlSession.insert("product.insert", productVO);
	}
	
//	전체상품조회
	public List<ProductVO> selectAll(){
		return sqlSession.selectList("product.selectAll");
	}
	
//	상품 조회
	public Optional<ProductVO> select(Long id) {
		return Optional.ofNullable(sqlSession.selectOne("product.select", id));
	}
	
//	상품수정
	public void update(ProductVO productVO) {
		sqlSession.update("product.update", productVO);
	}
	
//	상품삭제
	public void delete(Long id) {
		sqlSession.delete("product.delete", id);
	}
	
//	재고변경
	public void updateStock(OrderVO orderVO) {
		sqlSession.update("product.updateStock", orderVO);
	}
}
