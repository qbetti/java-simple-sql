package org.example.handlers;

import com.google.inject.Inject;
import org.example.SQLConnectionManager;
import org.example.beans.User;

import java.util.List;
import java.util.logging.Logger;

public abstract class UserHandler {

    @Inject
    protected SQLConnectionManager sqlMgr;

    @Inject
    protected Logger logger;


    public abstract void insert(User user);
    public abstract List<User> selectAll();
}

