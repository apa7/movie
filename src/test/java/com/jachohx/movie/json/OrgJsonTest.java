package com.jachohx.movie.json;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 * ʹ��json-lib����ͽ���Json����
 * 
 * @author Alexia
 * @date 2013/5/23
 * 
 */
public class OrgJsonTest {
	
    /**
     * ����Json����
     * 
     * @return
     * @throws JSONException
     */
    public static String BuildJson() throws JSONException {

        // JSON��ʽ���ݽ�������
        JSONObject jo = new JSONObject();

        // ���湹������map��һ��list��һ��Employee����
        Map<String, String> map1 = new HashMap<String, String>();
        map1.put("name", "Alexia");
        map1.put("sex", "female");
        map1.put("age", "23");

        Map<String, String> map2 = new HashMap<String, String>();
        map2.put("name", "Edward");
        map2.put("sex", "male");
        map2.put("age", "24");

        List<Map> list = new ArrayList<Map>();
        list.add(map1);
        list.add(map2);

        Employee employee = new Employee();
        employee.setName("wjl");
        employee.setSex("female");
        employee.setAge(24);

        // ��Mapת��ΪJSONArray����
        JSONArray ja = new JSONArray();
        ja.put(map1);

        System.out.println("JSONArray�������ݸ�ʽ��");
        System.out.println(ja.toString());

        // ��Javabeanת��ΪJson���ݣ���ҪMap��ת��
        JSONObject jo1 = JsonHelper.toJSON(employee);

        System.out.println("\n����Employee�����Json���ݸ�ʽ��");
        System.out.println(jo1.toString());

        // ����Json���ݣ�����һ��map��һ����Employee�����Json����
        jo.put("map", ja);
        jo.put("employee", jo1.toString());
        System.out.println("\n���չ����JSON���ݸ�ʽ��");
        System.out.println(jo.toString());

        return jo.toString();

    }

    /**
     * ����Json����
     * 
     * @param jsonString
     *            Json�����ַ���
     * @throws JSONException
     * @throws ParseException
     */
    public static void ParseJson(String jsonString) throws JSONException,
            ParseException {

        JSONObject jo = new JSONObject(jsonString);
        JSONArray ja = jo.getJSONArray("map");

        System.out.println("\n��Json���ݽ���ΪMap��");
        System.out.println("name: " + ja.getJSONObject(0).getString("name")
                + " sex: " + ja.getJSONObject(0).getString("sex") + " age: "
                + ja.getJSONObject(0).getInt("age"));

        String jsonStr = jo.getString("employee");
        Employee emp = new Employee();
        JsonHelper.toJavaBean(emp, jsonStr);

        System.out.println("\n��Json���ݽ���ΪEmployee����");
        System.out.println("name: " + emp.getName() + " sex: " + emp.getSex()
                + " age: " + emp.getAge());

    }

    /**
     * @param args
     * @throws JSONException
     * @throws ParseException
     */
    public static void main(String[] args) throws JSONException, ParseException {
        // TODO Auto-generated method stub

        ParseJson(BuildJson());
    }

}