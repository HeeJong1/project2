package com.kor.muser.dao;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kor.muser.dto.Reservation;

@Repository
public class ReservationDAOImpl implements ReservationDAO {

	@Autowired
	SqlSession sqlSession;

	private static final String namespace = "com.spring.muser.mybatis.mapper.ReservationMapper";

	@Override
	public int ReservationCheck(int ofNo, Date bookDate) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ofNo",ofNo);
		map.put("bookDate",bookDate);
		return sqlSession.selectOne(namespace + ".ReservationCheck", map);
	}

	@Override
	public void ReservationCheckIn(Reservation dto) {
		sqlSession.insert(namespace + ".ReservationCheckIn", dto);
	}

	@Override
	public List<Reservation> ReservationList(String muId) {
		return sqlSession.selectList(namespace + ".ReservationList", muId);
	}

	@Override
	public int sumMoney(String muId){
        return sqlSession.selectOne(namespace + ".sumMoney", muId);
	}
}
