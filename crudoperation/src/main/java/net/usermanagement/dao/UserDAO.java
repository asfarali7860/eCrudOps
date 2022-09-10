package net.usermanagement.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import net.usermanagement.model.User;


public class UserDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3305/demo?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "SlaF@876";

    private static final String INSERT_USERS_SQL = "INSERT INTO users" + "  (eid, name, email, dob, gender, phone, address, state, pcode, password, country, dept, branch, jdate, spa) VALUES " +
        " (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";

    private static final String SELECT_USER_BY_ID = "select id,eid,name,email,dob,gender,phone,address,state,pcode,password,country,dept,branch,jdate,spa from users where id =?";
    private static final String SELECT_ALL_USERS = "select * from users";
    private static final String DELETE_USERS_SQL = "delete from users where id = ?;";
    private static final String UPDATE_USERS_SQL = "update users set eid = ?, name = ?, email = ?, dob = ?, gender = ?, phone = ?, address = ?, state = ?, pcode = ?, password = ?, country = ?, dept = ?, branch = ?, jdate = ?, spa =? where id = ?;";

    public UserDAO() {}

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }

    public void insertUser(User user) throws SQLException {
        System.out.println(INSERT_USERS_SQL);
        // try-with-resource statement will auto close the connection.
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
        	preparedStatement.setString(1, user.getEid());
        	preparedStatement.setString(2, user.getName());
            preparedStatement.setString(3, user.getEmail());
            preparedStatement.setString(4, user.getDob());
            preparedStatement.setString(5, user.getGender());
            preparedStatement.setString(6, user.getPhone());
            preparedStatement.setString(7, user.getAddress());
            preparedStatement.setString(8, user.getState());
            preparedStatement.setString(9, user.getPcode());
            preparedStatement.setString(10, user.getPassword());
            preparedStatement.setString(11, user.getCountry());
            preparedStatement.setString(12, user.getDept());
            preparedStatement.setString(13, user.getBranch());
            preparedStatement.setString(14, user.getJdate());
            preparedStatement.setString(15, user.getSpa());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    public User selectUser(int id) {
        User user = null;
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();
            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
            	String eid = rs.getString("eid");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String dob = rs.getString("dob");
                String gender = rs.getString("gender");
                String phone = rs.getString("phone");
                String address = rs.getString("address");
                String state = rs.getString("state");
                String pcode = rs.getString("pcode");
                String password = rs.getString("password");
                String country = rs.getString("country");
                String dept = rs.getString("dept");
                String branch = rs.getString("branch");
                String jdate = rs.getString("jdate");
                String spa = rs.getString("spa");
                user = new User(id, eid, name, email, dob, gender, phone, address, state, pcode, password, country, dept, branch, jdate, spa);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return user;
    }

    public List < User > selectAllUsers() {

        // using try-with-resources to avoid closing resources (boiler plate code)
        List < User > users = new ArrayList < > ();
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);) {
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int id = rs.getInt("id");
                String eid = rs.getString("eid");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String dob = rs.getString("dob");
                String gender = rs.getString("gender");
                String phone = rs.getString("phone");
                String address = rs.getString("address");
                String state = rs.getString("state");
                String pcode = rs.getString("pcode");
                String password = rs.getString("password");
                String country = rs.getString("country");
                String dept = rs.getString("dept");
                String branch = rs.getString("branch");
                String jdate = rs.getString("jdate");
                String spa = rs.getString("spa");
                users.add(new User(id, eid, name, email, dob, gender, phone, address, state, pcode, password, country, dept, branch, jdate, spa));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return users;
    }

    public boolean deleteUser(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(DELETE_USERS_SQL);) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public boolean updateUser(User user) throws SQLException {
         boolean rowUpdated;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(UPDATE_USERS_SQL);) {
        	statement.setString(1, user.getEid());
        	statement.setString(2, user.getName());
            statement.setString(3, user.getEmail());
            statement.setString(4, user.getDob());
            statement.setString(5, user.getGender());
            statement.setString(6, user.getPhone());
            statement.setString(7, user.getAddress());
            statement.setString(8, user.getState());
            statement.setString(9, user.getPcode());
            statement.setString(10, user.getPassword());
            statement.setString(11, user.getCountry());
            statement.setString(12, user.getDept());
            statement.setString(13, user.getBranch());
            statement.setString(14, user.getJdate());
            statement.setString(15, user.getSpa());
            statement.setInt(16, user.getId());

            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}