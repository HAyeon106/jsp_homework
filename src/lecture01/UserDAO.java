package lecture01;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import lecture01.DB;

public class UserDAO {
	
	public static List<User> findAll() throws Exception {
		String sql = "";
		try(Connection connection = DB.getConnection("student1");
				PreparedStatement statement = connection.prepareStatement(sql);
				ResultSet resultSet = statement.executeQuery()){
				ArrayList<User> list = new ArrayList<User>();
				while(resultSet.next()) {
					User user = new User();
					user.setId(resultSet.getInt("id"));
					user.setUserId(resultSet.getString("userId"));
					user.setPassword(resultSet.getString("password"));
					user.setName(resultSet.getString("name"));
					user.setName(resultSet.getString("email"));
					user.setDepartmentId(resultSet.getInt("departmentId"));
					user.setName(resultSet.getString("departmentName"));
					user.setEnabled(resultSet.getBoolean("enabled"));
					user.setName(resultSet.getString("userType"));
					list.add(user);
				}
				return list;
		}
	}
}
