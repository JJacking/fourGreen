package com.green.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.green.dto.AuctionDto;
import com.green.dto.CustomerDto;

import oracle.jdbc.logging.annotations.Log;

public class ProductDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<AuctionDto> selectAllAuction(){
		return sqlSession.selectList("mybatis.mapper.product.selectAllAuction");	
	}
	
	public List<CustomerDto> selectAllCustomer(){
		return sqlSession.selectList("mybatis.mapper.product.selectAllCustomer");	
	}
	
	public AuctionDto selectOne(int num){
		return sqlSession.selectOne("mybatis.mapper.product.selectOne", num);	
	}

	public void readCount(int num){
		sqlSession.update("mybatis.mapper.product.readCount", num);	
	}
	
	public void insertProduct(AuctionDto dto) {
		sqlSession.insert("mybatis.mapper.product.insertProduct",dto);
	}
	
	public void deleteProduct(AuctionDto dto) {
		sqlSession.delete("mybatis.mapper.product.deleteProduct", dto);
	}
	
	
	public void biding(int strPrice, int num) {
		int[] array = {strPrice,num};
		sqlSession.update("mybatis.mapper.product.biding",array);
	}
	
	public void insertCustomer(CustomerDto dto) {
		biding(Integer.parseInt(dto.getBidMoney()), dto.getNum());
		sqlSession.insert("mybatis.mapper.product.insertCustomer",dto);
	}

	public void newAuction() {
		sqlSession.insert("mybatis.mapper.product.newAuction");
	}
	
	public List<AuctionDto> selectTargetAuctionByPaging(String category, String filter, String sort, int startNum, String end){
		System.out.println(category+" / "+filter+" / "+sort+" / "+startNum+" / "+end);
		Object[] array = {category, filter, sort, startNum, end};
		return sqlSession.selectList("mybatis.mapper.product.selectTargetAuctionByPaging",array);
	}

	public int selectAllNumAuction() {
		return sqlSession.selectOne("mybatis.mapper.product.selectAllNumAuction");
	}
	
	public int selectAllNumAuctionByCategory(String category) {
		return sqlSession.selectOne("mybatis.mapper.product.selectAllNumAuctionByCategory", category);
	}
	
	public List<AuctionDto> search(String searchCate, String searchText){
		String[] array = {searchCate, "%"+searchText+"%"};
		System.out.println(array[0]+" / "+array[1]);
		return sqlSession.selectList("mybatis.mapper.product.search",array);
	}


//	public List<AuctionDto> biding(int strPrice, String bidTime){
//		String[] array = {searchCate, "%"+searchText+"%"};
//		return sqlSession.selectList("mybatis.mapper.product.search",array);
//	}

//	public Object readCount() {
//		sqlSession.update("mybatis.mapper.product.readCount");
//		
//		return sqlSession.selectOne("mybatis.mapper.product.selectAllNumAuction");
//	}
	
	
	
	

	
	
}
