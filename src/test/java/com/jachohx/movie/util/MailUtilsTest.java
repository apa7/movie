package com.jachohx.movie.util;

import javax.mail.MessagingException;

import org.apache.commons.mail.EmailException;
import org.junit.Test;

public class MailUtilsTest {
	@Test
	public void send() throws EmailException, MessagingException {
		String subject = "һ��Ҫ�յ�";
		String content = "��ã����ʼ�һ��Ҫ�յ�";
		String to = "huang9370@163.com";
		MailUtils.getInstance().sendMail(subject, content, to);
	}
}
