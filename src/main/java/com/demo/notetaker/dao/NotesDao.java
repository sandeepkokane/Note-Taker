package com.demo.notetaker.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.demo.notetaker.entity.Notes;

public class NotesDao {

	private SessionFactory factory;

	public NotesDao(SessionFactory factory) {
		this.factory = factory;
	}
	
	//saving data to database
	public int saveNotes(Notes notes)
	{
		Session session = this.factory.openSession();
		Transaction tx = session.beginTransaction();
		
		int i = (Integer) session.save(notes);
		
		tx.commit();
		session.close();
		return i;
	}
	
	//fetching data from the database
	public List<Notes> getNotes()
	{
		Session session = this.factory.openSession();
		
		Query query = session.createQuery("from Notes");
		List<Notes> list = query.getResultList();
 		
		session.close();		
		return list;
	}
	
	//fetching note by id
	public Notes getNotesById(int noteId)
	{
		Session session = this.factory.openSession();
		Notes notes = session.get(Notes.class, noteId);
		session.close();
		
		return notes;
	}
	
	//deleting the note
	public void deleteNote(int noteId)
	{
		Session session = this.factory.openSession();
		Transaction tx = session.beginTransaction();
		
		Notes notes = this.getNotesById(noteId);
		
		session.delete(notes);

		tx.commit();
		session.close();
	}
	
	//updating notes
	public int updateNote(Notes note)
	{
		Session session = this.factory.openSession();
		Transaction tx = session.beginTransaction();
		
		Notes notes = this.getNotesById(note.getId());
		
		String q = "update Notes set title =: t, content =: c,date =: d where id=:i";
		Query query = session.createQuery(q);
		query.setParameter("t", note.getTitle());
		query.setParameter("c", note.getContent());
		query.setParameter("d", note.getDate());
		query.setParameter("i", note.getId());
		
		int i = query.executeUpdate();
		
		tx.commit();
		session.close();
		
		return i;
	}
}