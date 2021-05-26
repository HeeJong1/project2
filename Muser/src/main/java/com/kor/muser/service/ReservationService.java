package com.kor.muser.service;

import java.sql.Date;
import java.util.List;

import com.kor.muser.dto.Reservation;

public interface ReservationService {

	public void ReservationCheckIn(Reservation dto);

	public List<Reservation> ReservationList(String muId);

	public int ReservationCheck(int ofNo, Date bookDate);

	public int sumMoney(String muId);

}
