package com.jachohx.movie.util;

import java.io.StringWriter;
import java.util.Map;

import jetbrick.template.JetEngine;
import jetbrick.template.JetTemplate;

public class JetEngineUtils {
	public static String getTemplate(String templateFile, Map<String, Object> context) {
		// ����һ��Ĭ�ϵ� JetEngine
		JetEngine engine = JetEngine.create();
		 
		// ��ȡһ��ģ�����
		JetTemplate template = engine.getTemplate(templateFile);
		 
		// ���� context ����
//		Map<String, Object> context = new HashMap<String, Object>();
//		context.put("user", user);
//		context.put("books", books);
		 
		// ��Ⱦģ��
		StringWriter writer = new StringWriter();
		template.render(context, writer);
		 
		// ���
		return writer.toString();
	}
}
