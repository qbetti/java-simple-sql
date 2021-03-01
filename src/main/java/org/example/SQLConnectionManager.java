package org.example;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Logger;

public abstract class SQLConnectionManager {

    private final String dbms;
    private final String userName;
    private final String password;
    private final String address;
    private final String port;
    private final String dbName;

    private Connection connection;

    public SQLConnectionManager(String dbms, String address, String port, String dbName, String userName, String password) {
        this.dbms = dbms;
        this.address = address;
        this.port = port;
        this.dbName = dbName;
        this.userName = userName;
        this.password = password;
    }

    protected String buildURL() {
        return "jdbc:" + dbms
                + "://" + address
                + ":" + port
                + "/" + dbName;
    }

    protected Properties buildProperties() {
        Properties connectionProps = new Properties();
        connectionProps.put("user", userName);
        connectionProps.put("password", password);

        return connectionProps;
    }

    public Connection getConnection() {
        if(connection == null) {
            try {
                String url = buildURL();
                connection = DriverManager.getConnection(url, buildProperties());
                Logger.getGlobal().info("Connected as "+userName+ " to database "+url);
            } catch (SQLException throwables) {
                throwables.printStackTrace();
                System.exit(-1);
            }
        }
        return connection;
    }
}
