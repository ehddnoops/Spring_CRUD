package edu.spring.ex02;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
@WebAppConfiguration
public class BoardControllerTest {
	private static final Logger LOGGER =
			LoggerFactory.getLogger(BoardControllerTest.class);
	
	@Autowired
	private WebApplicationContext wac; //�� ���ø����̼� ��ü
	
	//MVC ������ ���� �׽�Ʈ�ϴ� mock-up ��ü
	private MockMvc mock;
	
	@Before
	//���� JUnit �׽�Ʈ�� �����ϱ� ���� �ʱ�ȭ �۾��� �����ϴ� �޼ҵ�
	public void beforeTest() {
		LOGGER.info("befireTest ȣ��");
		LOGGER.info("wac : " + wac);
		LOGGER.info("mock : " + mock);
		// ��Ʈ�ѷ� �޼ҵ忡�� ��û�� ���� �� �ִ� mockup ��ü ����
		mock = MockMvcBuilders.webAppContextSetup(wac).build();
		
	}
	@Test
	public void test() throws Exception{
		testList();
	}
	
	private void testList() throws Exception{
		LOGGER.info("testList() ȣ��");
		// get(uri) : GET ��û�� ���� mock ��ü ����
		// post(uri) : POST ��û�� ���� mock ��ü ����
		// put(uri) : PUT ��û�� ���� mock ��ü ����
		// delete(uri) : DELETE ��û�� ���� mock ��ü ����
		// param(key, value) : �Ķ���� ������ ���� 
		mock.perform(get("/board/list").param("page", "1"));
		
	}
	
	
	@After
	// JUnit �׽�Ʈ ���� �� ȣ��Ǵ� �޼ҵ�
	public void afterTest() {
		LOGGER.info("afterTest() ȣ��");
	}
}
