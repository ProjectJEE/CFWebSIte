package com.bulbcrowding.tests;



import static org.junit.Assert.assertNotNull;

import java.text.SimpleDateFormat;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.bulbcrowding.model.Comment;



public class CommentTest {
	
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	private Comment com;


	@Before
	public void setUp() throws Exception {
		com= new Comment();
	}

	@After
	public void tearDown() throws Exception {
		com=null;
	}

	@Test
	public final void testComment() {
		assertNotNull("L'instance n'est pas créée", com);
	}

}
