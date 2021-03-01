package org.example;

public class MySQLConnectionManager extends SQLConnectionManager {


    public MySQLConnectionManager(String address, String port, String dbName, String userName, String password) {
        super("mysql", address, port, dbName, userName, password);
    }
}
