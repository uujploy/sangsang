package com.gr.ssgb.note.model;

import java.sql.Timestamp;

public class NoteVO {
	//쪽지 송신
	private int noteNo;
	private int mNo;
	private String noteTitle;
	private String noteContent;
	private Timestamp noteRegdate;
	private String noteDelFlg;
	
	//쪽지함(수신)
	private int recNo;
	private String recDelFalg;
	private String recImpFlag;
	private String recReadFlag;
	public int getNoteNo() {
		return noteNo;
	}
	public void setNoteNo(int noteNo) {
		this.noteNo = noteNo;
	}
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	public String getNoteTitle() {
		return noteTitle;
	}
	public void setNoteTitle(String noteTitle) {
		this.noteTitle = noteTitle;
	}
	public String getNoteContent() {
		return noteContent;
	}
	public void setNoteContent(String noteContent) {
		this.noteContent = noteContent;
	}
	public Timestamp getNoteRegdate() {
		return noteRegdate;
	}
	public void setNoteRegdate(Timestamp noteRegdate) {
		this.noteRegdate = noteRegdate;
	}
	public String getNoteDelFlg() {
		return noteDelFlg;
	}
	public void setNoteDelFlg(String noteDelFlg) {
		this.noteDelFlg = noteDelFlg;
	}
	public int getRecNo() {
		return recNo;
	}
	public void setRecNo(int recNo) {
		this.recNo = recNo;
	}
	public String getRecDelFalg() {
		return recDelFalg;
	}
	public void setRecDelFalg(String recDelFalg) {
		this.recDelFalg = recDelFalg;
	}
	public String getRecImpFlag() {
		return recImpFlag;
	}
	public void setRecImpFlag(String recImpFlag) {
		this.recImpFlag = recImpFlag;
	}
	public String getRecReadFlag() {
		return recReadFlag;
	}
	public void setRecReadFlag(String recReadFlag) {
		this.recReadFlag = recReadFlag;
	}
	@Override
	public String toString() {
		return "NoteVO [noteNo=" + noteNo + ", mNo=" + mNo + ", noteTitle=" + noteTitle + ", noteContent=" + noteContent
				+ ", noteRegdate=" + noteRegdate + ", noteDelFlg=" + noteDelFlg + ", recNo=" + recNo + ", recDelFalg="
				+ recDelFalg + ", recImpFlag=" + recImpFlag + ", recReadFlag=" + recReadFlag + "]";
	}
	
}