package com.student.dao;

import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

import com.student.bean.Student;
import com.student.mapper.StudentMapper;
//**stundentdaoクラス

public class StudentDao {

	/**
	 * @Fields jdbcTemplate
	 */
	private JdbcTemplate jdbcTemplate;

	/**
	 * spring提供的类
	 *
	 * @param jdbcTemplate
	 * 返回值类型： void
	 */
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	/**
	 * 查询所有学生
	 * @return 返回值类型： List<Student>
	 */
	public List<Student> queryAll() {


		String sql = "select id,name,birthday,age,score,classid,poslnumber,telephone,address,mynumber from student";
		// 将查询结果映射到Student类中，添加到list中，并返回
		List <Student> studentList =new ArrayList<Student>();
		studentList = (ArrayList <Student>)jdbcTemplate.query(sql,new StudentMapper());

		int sumage=0;
		for (Student stud : studentList) {
			// Arraylistから学生を１個ずつ取り出し表示する
			System.out.println(stud.toString());
			sumage=sumage+stud.getAge();
		}
		System.out.println("学生年齢の平均値："+sumage/studentList.size());
		return studentList;
	}

	/**
	 * 通过姓名查询
	 * @param name
	 * @return 返回值类型： List<Student>
	 */
	public List<Student> queryByName(String name) {
		String sql = "select id,name,birthday,age,score,telephone,poslnumber,address,mynumber from student where name like '%"
				+ name
				+ "%'";

		return jdbcTemplate.query(sql, new StudentMapper());
	}

	/**
	 * 添加学生
	 * @param student
	 * @return 返回值类型： boolean
	 */
	public boolean addStu(Student student) {
		String sql = "insert into student(id,name,birthday,age,score,telephone,poslnumber,address,mynumber) values(0,?,?,?,?,?,?,?)";

		return jdbcTemplate.update(sql,
				new Object[] { student.getName(), student.getBirthday(), student.getAge(),
						student.getScore(), student.getTelephone(), student.getAddress(), student.getPoslnumber(),
						student.getMynumber() },
				new int[] { Types.VARCHAR, Types.VARCHAR, Types.INTEGER, Types.DOUBLE, Types.VARCHAR, Types.VARCHAR,
						Types.VARCHAR }) == 1;
	}

	/**
	 * 删除学生
	 * @param id
	 * @return 返回值类型： boolean
	 */
	public boolean deleteStu(Integer id) {

		String sql = "delete from student where id = ?";
		return jdbcTemplate.update(sql, id) == 1;
	}

	/**
	 * 更新学生信息
	 * @param student
	 * @return 返回值类型： boolean
	 */
	public boolean updateStu(Student student) {

		String sql = "update student set name=? ,age=?,birthday = ? ,score = ?,telephone = ?,address = ?,poslnumber = ?,mynumber = ?  where id = ?";
		Object stuObj[] = new Object[] { student.getName(), student.getAge(), student.getBirthday(),
				student.getScore(), student.getTelephone(), student.getPoslnumber(), student.getId(),
				student.getMynumber() };

		return jdbcTemplate.update(sql, stuObj) == 1;
	}

	/**
	 * 查询所有学生
	 * @return 返回值类型： List<Student>
	 */
	public List<Student> queryAll1() {
		String sql = "select id,name,birthday,age,score,telephone,address,poslnumber,mynumber from student";
		//将查询结果映射到Student类中，添加到list中，并返回
		// 将查询结果映射到Student类中，添加到list中，并返回
		ArrayList<Student> studentList = (ArrayList) jdbcTemplate.query(sql, new StudentMapper());
		studentList = (ArrayList<Student>) jdbcTemplate.query(sql, new StudentMapper());
		int sumage = 0;
		for (Student stud : studentList) {
			// Arraylistから学生を１個ずつ取り出し表示する
			System.out.println(stud.getAge());
			// Arraylistから学生の年齢をを１個ずつ取り出し+sumage
			sumage = sumage + stud.getAge();
		}
		System.out.println("学生の平均年齢：" + sumage / studentList.size());
		//最大値
				int maxage = 0;
				for (Student stud : studentList) {
					// Arraylistから学生を１個ずつ取り出し表示する
					System.out.println(stud.getAge());
					// Arraylistから学生の年齢をを１個ずつ取り出し
					// maxageより小であれば交換
					if(maxage<stud.getAge())
					{
						maxage = stud.getAge();
					}
				}
				System.out.println("学生の最大年齢：" +maxage);

				// 将查询结果映射到Student类中，添加到list中，并返回


		// 将查询结果映射到Student类中，添加到list中，并返回
		return jdbcTemplate.query(sql, new StudentMapper());
	}

}
