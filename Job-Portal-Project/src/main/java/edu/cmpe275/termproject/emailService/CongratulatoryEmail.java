package edu.cmpe275.termproject.emailService;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class CongratulatoryEmail {
	
	public static void sendCongratesMail(String receiverMail, String firstName, String lastName,
			  String jobId, String jobTitle, String  companyName){
//String emailID = "testmyouth@gmail.com";
//String emailPassword = 		
//
		String emailID = "springonionscmpe275@gmail.com";
		String emailPassword = ###CONTACT COLLABORATORS ###;

		Properties properties = new Properties();
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.port", "587");
		Session session = Session.getInstance(properties,
				new javax.mail.Authenticator() {  
			protected PasswordAuthentication getPasswordAuthentication() {  
				return new PasswordAuthentication(emailID,emailPassword);  
			}  
		});

		try {
			Message message = new MimeMessage(session);
			//message.setFrom(new InternetAddress("testmyouth@gmail.com"));
			message.setFrom(new InternetAddress("springonionscmpe275@gmail.com"));            
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(receiverMail));

			message.setSubject("Congratulations - ACCEPTED for "+jobId+" Position "+jobTitle+" :"+companyName);
			message.setText("\nDear "+firstName+" "+lastName+","
					+ "\n\n Congratulations !!! \n\nThis is to inform you that you have been selected for job posting "+jobId+": "+jobTitle+" at "+companyName
					+ "\nThanks for using Spring Onions !"
					+ "\n\nCheers,\n" + "Team Spring-Onions"
					+"\nSpreading tears of happiness!");
			Transport.send(message);
			System.out.println("Your message is sent successfully to "+receiverMail);
		} catch (MessagingException e) { e.printStackTrace();}
}

}
