package com.kor.muser.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kor.muser.dao.ReservationDAO;
import com.kor.muser.dto.Reservation;

@Service
public class ReservationServiceImpl implements ReservationService {

	@Autowired
	ReservationDAO dao;

	@Override
	public int ReservationCheck(int ofNo, Date bookDate) {
		return dao.ReservationCheck(ofNo,bookDate);
	}

	@Override
	public void ReservationCheckIn(Reservation dto) {
		dao.ReservationCheckIn(dto);
	}

	@Override
	public List<Reservation> ReservationList(String muId) {
		return dao.ReservationList(muId);
	}

	@Override
	public int sumMoney(String muId){
        return dao.sumMoney(muId);
	}
}
