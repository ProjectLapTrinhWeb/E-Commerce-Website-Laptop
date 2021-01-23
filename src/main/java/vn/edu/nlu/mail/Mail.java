package vn.edu.nlu.mail;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import java.util.Properties;

public class Mail {
    public static void sendMail(String userName, String password){
        Properties p = new Properties();


        Session s = Session.getInstance(p,
                new Authenticator() {
                    @Override
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(userName, password);
                    }
                });

    }
}
