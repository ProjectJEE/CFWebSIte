package com.bulbcrowding.tests;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.bulbcrowding.model.Project;

public class ProjectTest {

	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	private Project project;

	@Before
	public void setUp() throws Exception {
		project = new Project();
	}

	@After
	public void tearDown() throws Exception {
		project = null;
	}

	@Test
	public final void testProject() {
		assertNotNull("L'instance n'est pas créée", project);
	}


	@Test
	public final void testGetImage() {
		project.setImg_project("/image/logo.png");
		assertEquals("Le texte est incorrect", "/image/logo.png", project.getImg_project());
	}

	@Test
	public final void setImage() {
		project.setImg_project("/image/logo.jpeg");
		assertEquals("Le texte est incorrect", "/image/logo.jpeg", project.getImg_project());
	}

}
