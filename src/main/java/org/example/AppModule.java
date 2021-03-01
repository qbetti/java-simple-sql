package org.example;

import com.google.inject.AbstractModule;
import org.example.handlers.UserHandler;
import org.example.handlers.UserMySQLHandler;

public class AppModule extends AbstractModule {

    @Override
    protected void configure() {
        bind(SQLConnectionManager.class).toInstance(new MySQLConnectionManager(
                "localhost",
                "3306",
                "test",
                "root",
                "root"));
        bind(UserHandler.class).to(UserMySQLHandler.class).asEagerSingleton();
    }
}
