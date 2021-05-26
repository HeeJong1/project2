package com.kor.muser.dto;
			
public class Like { //좋아요

		private String likeId;	//좋아요
		private int gdsNo;		//상품번호
		private int muNo;		//회원번호
		
		public String getLikeId() {
			return likeId;
		}
		public void setLikeId(String likeId) {
			this.likeId = likeId;
		}
		public int getGdsNo() {
			return gdsNo;
		}
		public void setGdsNo(int gdsNo) {
			this.gdsNo = gdsNo;
		}
		public int getMuNo() {
			return muNo;
		}
		public void setMuNo(int muNo) {
			this.muNo = muNo;
		}
		
		@Override
		public String toString() {
			return "Like [likeId=" + likeId + ", gdsNo=" + gdsNo + ", muNo=" + muNo + "]";
		}
		
		
		
}
