package com.app.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.app.dto.CancleProductDTO;
import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.CancleProductVO;

public class CancleProductDAO {
	public SqlSession sqlSession;

	public CancleProductDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	주문취소
	public void insert(CancleProductVO cancleProductVO) {
		sqlSession.insert("cancleProduct.insert", cancleProductVO);
	}
	
//	판매자 주문취소 내역
	public List<CancleProductDTO> selectBySeller(Long sellerId){
		return sqlSession.selectList("cancleProduct.selectBySeller", sellerId);
	}
	
//	날짜별 취소주문 총내역
    public List<CancleProductDTO> selectByDate(Long sellerId, String startDate, String endDate) {
        Map<String, Object> params = new HashMap<>();
        params.put("sellerId", sellerId);
        params.put("startDate", startDate);
        params.put("endDate", endDate);
        
        return sqlSession.selectList("cancleProduct.selectByDate", params);
    }
    
    public List<CancleProductDTO> selectByDay(Long sellerId, String startDate, String endDate) {
        Map<String, Object> params = new HashMap<>();
        params.put("sellerId", sellerId);
        params.put("startDate", startDate);
        params.put("endDate", endDate);
        
        return sqlSession.selectList("cancleProduct.selectByDay", params);
    }
	
}
