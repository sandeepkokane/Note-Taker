package com.demo.notetaker.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Notes implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String title;
	private String content;
	private Date date;

	public Notes() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Notes(int id, String title, String content, Date date) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.date = date;
	}

	public Notes(String title, String content, Date date) {
		super();
		this.title = title;
		this.content = content;
		this.date = date;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Notes [id=" + id + ", title=" + title + ", content=" + content + ", date=" + date + "]";
	}

}
