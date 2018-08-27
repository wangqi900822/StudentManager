package com.student.bean;

import java.util.ArrayList;

public class printStudent {

	public static void main(String[] args) {

		// TODO 自動生成されたメソッド・スタブ
		ArrayList<String> studenlistt = new ArrayList<>();
		studenlistt.add("jackie");//索引为0  //.add(e)
		studenlistt.add("peter");//索引为1
		studenlistt.add("annie");//索引为2
		studenlistt.add("martin");//索引为3
		studenlistt.add("marry");//索引为4
		studenlistt.remove(3);//.remove(index)
		studenlistt.remove("marry");//.remove(Object o)
		String per = "";
		per = studenlistt.get(1);
		System.out.println(per);////.get(index)
		for (int i = 0; i < studenlistt.size(); i++) {
			System.out.println(studenlistt.get(i));//.get(index)
		}

	}


}
