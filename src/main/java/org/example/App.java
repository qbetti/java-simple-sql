package org.example;

import com.google.inject.Guice;
import com.google.inject.Inject;
import com.google.inject.Injector;
import org.example.beans.User;
import org.example.handlers.UserHandler;

import java.util.Date;
import java.util.StringJoiner;

public class App {

    @Inject
    private UserHandler userHandler;

    public static void main(String[] args) {
        Injector injector = Guice.createInjector(new AppModule());
        App app = injector.getInstance(App.class);
        app.insertUser();
        app.selectUser();
    }

    public void insertUser() {
        User user = new User();
        user.setName("Georgio");
        user.setCreatedBy("Giovanni");
        user.setCreatedDate(new Date());

        userHandler.insert(user);
    }

    private void selectUser() {
        userHandler.selectAll().forEach(user ->
            System.out.println(new StringJoiner(", ", "[","]")
            .add(String.valueOf(user.getId()))
            .add(user.getName())
            .add(user.getCreatedBy())
            .add(user.getCreatedDate().toString())
            .toString())
        );
    }
}
