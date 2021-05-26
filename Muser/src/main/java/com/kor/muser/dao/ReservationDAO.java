package com.kor.muser.dao;

import java.sql.Date;
import java.util.List;

import com.kor.muser.dto.Reservation;

public interface ReservationDAO {

	public int ReservationCheck(int ofNo, Date bookDate);

	public void ReservationCheckIn(Reservation dto);

	public List<Reservation> ReservationList(String muId);

	public int sumMoney(String muId);

}
