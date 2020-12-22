package demo.mail;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

import static javax.mail.Transport.send;

public class mail {
    public static void main(String[] args) throws MessagingException, UnsupportedEncodingException {
        Properties props = new Properties();
        props.put( "mail.smtp.auth" , "true");
        props.put( "mail.smtp.starttls.enable" , "true");
        props.put( "mail.smtp.host" , "smtp.gmail.com");
        props.put( "mail.smtp.port" , "587");


        String username = "dinhngocthai0205@gmail.com";
        String password = " ybceglnieacfvjbq";


        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication
                    getPasswordAuthentication() {
                        return new PasswordAuthentication(username,
                                password);

                    }
                });

        Message message = new MimeMessage(session);
       try{
        message.setFrom(new InternetAddress("dinhngocthai0205@gmail.com", "Dinh Ngoc Thai"));
        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse("dinhngocthai0205@gmail.com"));
        message.setSubject( "Testing subject");
        message.setText("This is a test mail");
        Transport.send(message);
        System.out.println("Done");
       }catch (MessagingException| UnsupportedEncodingException e){
           e.printStackTrace();
       }
    }
}
