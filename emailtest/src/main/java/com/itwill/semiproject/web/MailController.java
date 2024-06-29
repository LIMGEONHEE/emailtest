package com.itwill.semiproject.web;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.semiproject.config.MailProperties;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
public class MailController {
	
	private final MailProperties mailProperties;

	@PostMapping("/mail")
	public void sendMail(
			@RequestParam(value = "receiver") String receiver
	) {
		String to = receiver;         // sender email
	    String from = mailProperties.getSender();       // receiver email
	    String host = mailProperties.getHost();           // mail server host
	    String username = mailProperties.getUsername();  // mail server username
	    String password = mailProperties.getPassword();              // mail server password

	    try {
	      Properties properties = new Properties();
	      properties.setProperty("mail.smtp.host", host);
	      properties.put("mail.smtp.auth", "true");
	      properties.put("mail.smtp.starttls.enable", "true");
	      properties.put("mail.smtp.starttls.required", "true");
	      properties.put("mail.smtp.port", "587");
	      properties.put("mail.smtp.ssl.protocols", "TLSv1.2");
	      properties.put("mail.debug", "true");

	      // Create Authenticator object
	      Authenticator auth = new Authenticator() {
	        protected PasswordAuthentication getPasswordAuthentication() {
	          return new PasswordAuthentication(username, password);
	        }
	      };

	      // Create a Session object with the properties and the Authenticator
	      Session session = Session.getInstance(properties, auth);

	      // Create a default MimeMessage object
	      MimeMessage message = new MimeMessage(session);

	      // Set From: header field
	      message.setFrom(new InternetAddress(from));

	      // Set To: header field
	      message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

	      // Set Subject: header field
	      message.setSubject("Test Mail from Java Program");

	      // Set the actual message
	      message.setText("You can send mail from Java program by using mail API, but you need" +
	          " couple of more JAR files e.g. smtp.jar and activation.jar");

	      // Send message
	      Transport.send(message);
	      System.out.println("Email Sent successfully....");
	    } catch (Exception e) {
	      log.error("sendMail error", e);
	    }

	}
}
