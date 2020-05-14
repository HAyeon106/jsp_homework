package lecture01;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import lecture01.DB;

public class UserDAO3 {
	private static User getUserFrom(ResultSet resultSet) throws SQLException {
		User user = new User();
		user.setId(resultSet.getInt("id"));
		user.setUserId(resultSet.getString("userid"));
		user.setPassword(resultSet.getString("password"));
		user.setName(resultSet.getString("name"));
		user.setEmail(resultSet.getString("email"));
		user.setDepartmentId(resultSet.getInt("departmentId"));
		user.setEnabled(resultSet.getBoolean("enabled"));
		user.setUserType(resultSet.getString("userType"));
		return user;
	}

	public static List<User> findAll() throws Exception {
		String sql = "SELECT * " + "FROM student1.user";
		try (Connection connection = DB.getConnection("user");
				PreparedStatement statement = connection.prepareStatement(sql);
				ResultSet resultSet = statement.executeQuery()) {
			ArrayList<User> list = new ArrayList<User>();
			while (resultSet.next())
				list.add(getUserFrom(resultSet));
			return list;

		}
	}

	public static List<User> findByName(String name) throws Exception {
		String sql = "SELCT * " + "FROM user " + "WHERE name LIKE ?";
		try (Connection connection = DB.getConnection("user");
				PreparedStatement statement = connection.prepareStatement(sql)) {
			statement.setString(1, name + "%");
			try (ResultSet resultSet = statement.executeQuery()) {
				ArrayList<User> list = new ArrayList<User>();
				while (resultSet.next())
					list.add(getUserFrom(resultSet));
				return list;
			}

		}
	}

	public static User findById(int id) throws Exception {
		String sql = "SELECT * " + "FROM user " + "WHERE id = ?";
		try (Connection connection = DB.getConnection("user");
				PreparedStatement statement = connection.prepareStatement(sql)) {
			try (ResultSet resultSet = statement.executeQuery()) {
				return resultSet.next() ? getUserFrom(resultSet) : null;
			}
		}
	}
}
