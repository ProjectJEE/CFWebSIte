package com.bulbcrowding.tests;



import static org.junit.Assert.assertNotNull;

import java.text.SimpleDateFormat;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.bulbcrowding.model.Vote;

public class VoteTest {
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	private Vote v;

	@Before
	public void setUp() throws Exception {
		v=new Vote();
	}

	@After
	public void tearDown() throws Exception {
		v=null;
	}

	@Test
	public final void testVote() {
		assertNotNull("L'instance n'est pas créée", v);
	}

}
