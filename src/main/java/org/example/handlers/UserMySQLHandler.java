package org.example.handlers;

import org.example.beans.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.StringJoiner;

public class UserMySQLHandler extends UserHandler {

    @Override
    public void insert(User user) {
        String req = new StringJoiner(" ", "", ";")
                .add("insert into")
                .add(User.TABLE)
                .add(new StringJoiner(",", "(", ")")
                        .add(User._NAME)
                        .add(User._CREATED_BY)
                        .add(User._CREATED_DATE)
                        .toString())
                .add("VALUES")
                .add("(?,?,?)")
                .toString();
        try {
            PreparedStatement stmt = sqlMgr.getConnection().prepareStatement(req);
            stmt.setString(1, user.getName());
            stmt.setString(2, user.getCreatedBy());
            stmt.setTimestamp(3, new Timestamp(user.getCreatedDate().getTime()));
            stmt.executeUpdate();
            logger.info("User inserted");
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }


    @Override
    public List<User> selectAll() {
        String req = new StringJoiner(" ","",";")
                .add("select")
                .add(new StringJoiner(",")
                        .add(User._ID)
                        .add(User._NAME)
                        .add(User._CREATED_BY)
                        .add(User._CREATED_DATE)
                        .toString())
                .add("from")
                .add(User.TABLE)
                .toString();
        try {
            PreparedStatement stmt = sqlMgr.getConnection().prepareStatement(req);
            ResultSet resultSet = stmt.executeQuery();

            logger.info("Users (all) retrieved.");
            List<User> users = new ArrayList<>();
            while (resultSet.next()) {
                User user = new User();
                user.setId(resultSet.getInt(User._ID));
                user.setName(resultSet.getString(User._NAME));
                user.setCreatedBy(resultSet.getString(User._CREATED_BY));
                user.setCreatedDate(resultSet.getTimestamp(User._CREATED_DATE));
                users.add(user);
            }
            return users;

        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return null;
        }
    }

}
