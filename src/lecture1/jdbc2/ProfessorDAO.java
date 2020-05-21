package lecture1.jdbc2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import lecture01.DB;

public class ProfessorDAO {
	private static Professor getUserFrom(ResultSet resultSet) throws Exception{
		Professor professor = new Professor();
		professor.setId(resultSet.getInt("id"));
		professor.setProfessorName(resultSet.getString("name"));
		professor.setDepartmentId(resultSet.getInt("departmentId"));
		professor.setDepartmentName(resultSet.getString("departmentName"));
		return professor;
	}
	
	public static List<Professor> findAll() throws Exception{
		String sql = "SELECT p.*, d.departmentName "
				+ "FROM professor p LEFT JOIN department d ON u.departmentId = d.id";
		try(Connection connection = DB.getConnection("student1");
			 PreparedStatement statement = connection.prepareStatement(sql);
			 ResultSet resultSet = statement.executeQuery()){
			ArrayList<Professor> list = new ArrayList<Professor>();
			while(resultSet.next())
				list.add(getUserFrom(resultSet));
			return list;
		}
	}
	
	public static List<Professor> findByName(String name) throws Exception{
		String sql="SELECT p.*, d.departmentName "
				+ "FROM professor p LEFT JOIN department d ON u.departmentId = d.id "
				+ "WHERE u.name LIKE ?";
		try(Connection connection = DB.getConnection("student1");
			 PreparedStatement statement = connection.prepareStatement(sql)){
			statement.setString(1, name+"%");
			try(ResultSet resultSet = statement.executeQuery()) {
				ArrayList<Professor> list = new ArrayList<Professor>();
				while(resultSet.next())
					list.add(getUserFrom(resultSet));
				return list;
			}
		}
	}
	
	public static Professor findById(int id) throws Exception{
		String sql="SELECT p.*, d.departmentName "
				+ "FROM professor p LEFT JOIN department d ON u.departmentId = d.id "
				+ "WHERE u.id = ?";
		try(Connection connection = DB.getConnection("student1");
			 PreparedStatement statement = connection.prepareStatement(sql)){
			statement.setInt(1, id);
			try(ResultSet resultSet = statement.executeQuery()){
				return resultSet.next()?getUserFrom(resultSet):null;
			}
		}
	}
	
	public static void insert(Professor professor) throws Exception{
		String sql="INSERT professor (id, professorName, departmentId) "
				+ "VALUES(?,?,?,?)";
		try(Connection connection = DB.getConnection("student1");
			 PreparedStatement statement = connection.prepareStatement(sql)){
			statement.setInt(1,professor.getId());
			statement.setString(2, professor.getProfessorName());
			statement.setInt(3, professor.getDepartmentId());
			statement.executeUpdate();
		}
	}
	
	public static void update(Professor professor) throws Exception{
		String sql = "UPDATE professor SET id=?, professorName=?, departmentId=? "
				+ "WHERE id=?";
		try(Connection connection = DB.getConnection("student1");
				 PreparedStatement statement = connection.prepareStatement(sql)){
				statement.setInt(1,professor.getId());
				statement.setString(2, professor.getProfessorName());
				statement.setInt(3, professor.getDepartmentId());
				statement.setInt(4,professor.getId());
				statement.executeUpdate();
			}
	}
}
