package com.world.domain.main.vo;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class MemberVO {

   private int memberNo;
   private String email;
   private String password;
   private String name;
   private Date birth;
   private int gender;
   private String title;
   private String subtitle;
   private String propic;
   private int photo;
   private int board;
   private int video;
   private String phone;
   
   private String searchCondition;
   private String searchKeyword;
   private MultipartFile uploadFile;
   
   private int guestcount;
   private int friendcount;
   private int itemcount;
   private int dotorycount;
   private int cartcount;
   private int totalguestcount;
   
   



   public int getMemberNo() {
      return memberNo;
   }

   public void setMemberNo(int memberNo) {
      this.memberNo = memberNo;
   }

   public String getPassword() {
      return password;
   }

   public void setPassword(String password) {
      this.password = password;
   }

   public String getEmail() {
      return email;
   }

   public void setEmail(String email) {
      this.email = email;
   }

   public String getName() {
      return name;
   }

   public void setName(String name) {
      this.name = name;
   }

   public Date getBirth() {
      return birth;
   }

   public void setBirth(Date birth) {
      this.birth = birth;
   }

   public int getGender() {
      return gender;
   }

   public void setGender(int gender) {
      this.gender = gender;
   }

   public String getTitle() {
      return title;
   }

   public void setTitle(String title) {
      this.title = title;
   }

   public String getSubtitle() {
      return subtitle;
   }

   public void setSubtitle(String subtitle) {
      this.subtitle = subtitle;
   }

   public String getPropic() {
      return propic;
   }

   public void setPropic(String propic) {
      this.propic = propic;
   }

   public int getPhoto() {
      return photo;
   }

   public void setPhoto(int photo) {
      this.photo = photo;
   }

   public int getBoard() {
      return board;
   }

   public void setBoard(int board) {
      this.board = board;
   }

   public int getVideo() {
      return video;
   }

   public void setVideo(int video) {
      this.video = video;
   }

   public String getSearchCondition() {
      return searchCondition;
   }

   public void setSearchCondition(String searchCondition) {
      this.searchCondition = searchCondition;
   }

   public String getSearchKeyword() {
      return searchKeyword;
   }

   public void setSearchKeyword(String searchKeyword) {
      this.searchKeyword = searchKeyword;
   }

   public MultipartFile getUploadFile() {
      return uploadFile;
   }

   public void setUploadFile(MultipartFile uploadFile) {
      this.uploadFile = uploadFile;
   }
   
   public void setPhone(String Phone) {
      this.phone = Phone;
   }

   public String getPhone() {
      return phone;
   }
   
   
   public int getGuestcount() {
      return guestcount;
   }

   public void setGuestcount(int guestcount) {
      this.guestcount = guestcount;
   }

   public int getFriendcount() {
      return friendcount;
   }

   public void setFriendcount(int friendcount) {
      this.friendcount = friendcount;
   }

   public int getItemcount() {
      return itemcount;
   }

   public void setItemcount(int itemcount) {
      this.itemcount = itemcount;
   }

   public int getDotorycount() {
      return dotorycount;
   }

   public void setDotorycount(int dotorycount) {
      this.dotorycount = dotorycount;
   }

   public int getCartcount() {
      return cartcount;
   }

   public void setCartcount(int cartcount) {
      this.cartcount = cartcount;
   }
   
   public int getTotalguestcount() {
      return totalguestcount;
   }

   public void setTotalguestcount(int totalguestcount) {
      this.totalguestcount = totalguestcount;
   }

}