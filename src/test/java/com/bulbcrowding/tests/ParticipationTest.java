package com.bulbcrowding.tests;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.bulbcrowding.model.Participate;

import junit.framework.Assert;

public class ParticipationTest {
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	private Participate p;

	@Before
	public void setUp() throws Exception {
		p = new Participate();
	}

	@After
	public void tearDown() throws Exception {
		p = null;
	}

	@Test
	public final void testParticipation() {
		assertNotNull("L'instance n'est pas créée", p);
	}

	@Test
	public final void testGetDate() {
		p.setDate_participation(new Date());
		assertEquals("La date est incorrecte", new Date(), p.getDate_participation());
	}

	@Test
	public final void testsetDate_participation() throws ParseException {
		p.setDate_participation(dateFormat.parse("2016-03-02 00:00:00"));
		assertEquals("La date est incorrecte", dateFormat.parse("2016-03-02 00:00:00"), p.getDate_participation());

	}

	@Test
	public final void testGetAmount() {
		final long d = 10010;
		p.setAmount_participation(d);
		Assert.assertEquals(p.getAmount_participation(), d, 0);
	}

	@Test
	public final void testSetAmount() {
		long d = 00001;
		p.setAmount_participation(d);
		Assert.assertEquals(p.getAmount_participation(), d, 0);
	}

	@Test
	public final void testGetId() {
		Long id = new Long(12);
		p.setId_participation(id);
		assertEquals("L'id est incorrect", id, p.getId_participation());
	}

	@Test
	public final void testSetId() {
		Long id = new Long(1);
		p.setId_participation(id);
		assertEquals("L'id est incorrect", id, p.getId_participation());
	}

}
