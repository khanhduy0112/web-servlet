package com.nlu.service;

import com.nlu.config.MailConfig;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class MailService {

    public void sendMail(String to) {

        Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.port", MailConfig.TSL_PORT);
        properties.put("mail.smtp.host", MailConfig.HOST_NAME);

        Session session = Session.getInstance(properties, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(MailConfig.SMTP_USERNAME, MailConfig.SMTP_PASSWORD);
            }
        });

        try {
            Message message = prepareMessage(to, session);
            Transport.send(message);
            System.out.println("Gui mail thanh cong");
        } catch (MessagingException e) {
            e.printStackTrace();
        }

    }

    public Message prepareMessage(String to, Session session) {
        Message message = new MimeMessage(session);
        try {
            message.setFrom(new InternetAddress(MailConfig.SMTP_USERNAME));
            message.setRecipient(MimeMessage.RecipientType.CC, new InternetAddress(to));
            message.setSubject("Xac nhan don hang");
            message.setText("Test test test test");
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        return message;
    }

    public static void main(String[] args) {
        MailService mailService = new MailService();
        mailService.sendMail("18130060@st.hcmuaf.edu.vn");
    }
}
