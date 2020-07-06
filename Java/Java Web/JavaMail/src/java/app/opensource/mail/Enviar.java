package app.opensource.mail;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;

public class Enviar {
    
    public void EnviaEmail(String SMTP, int PortaSMTP, String UsuarioSMTP, String SenhaSMTP, String Remetente, String Destinatario, String Titulo, String Conteudo) throws MessagingException {

        Properties propriedades = System.getProperties();

        propriedades.put("mail.smtp.host", SMTP);
        propriedades.put("mail.smtp.socketFactory.port", PortaSMTP);
        propriedades.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        propriedades.put("mail.smtp.auth", "true");
        propriedades.put("mail.smtp.port", PortaSMTP);

        Session Sessao = Session.getDefaultInstance(propriedades, new javax.mail.Authenticator() {

            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(UsuarioSMTP, SenhaSMTP);
            }
        });

        try {

            MimeMessage message = new MimeMessage(Sessao);
            message.setFrom(new InternetAddress(Remetente));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(Destinatario));
            message.setSubject(Titulo, "UTF-8");
            message.setContent(Conteudo, "text/html;charset=UTF-8");

            Transport.send(message); // Envia o Email

        } catch (Error ErroEnvioEmail) { ErroEnvioEmail.printStackTrace(); }
    } 
}
