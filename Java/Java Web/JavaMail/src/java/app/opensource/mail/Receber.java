package app.opensource.mail;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;

public class Receber {
    
      public Collection<Modelo> Recebe(String SMTP, String TipoProtocoloSMTP, String UsuarioSMTP, String SenhaSMTP, String PastaEmail, String ExcluiEmail) throws Exception {
        
        String TipoProtocolo = TipoProtocoloSMTP;
        String NomeProtocolo = "mail.store.protocol";
        
        Properties properties = new Properties();
        properties.put(NomeProtocolo, TipoProtocolo);

        Session Sessao = Session.getDefaultInstance(properties, new javax.mail.Authenticator() {

            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(UsuarioSMTP, SenhaSMTP);
            }
        });      

        Store Email = Sessao.getStore(TipoProtocolo);
        Email.connect(SMTP, UsuarioSMTP, SenhaSMTP);
        
        Folder Pasta = Email.getFolder(PastaEmail);
        Pasta.open(Folder.READ_WRITE);
        
        List<Modelo> ListaEmails = new ArrayList<>();
      
        for (Message Emails : Pasta.getMessages()) {
            
            Modelo EmailPasta = new Modelo();
            
            EmailPasta.setNumeroEmail(Emails.getMessageNumber());
            EmailPasta.setDataEnvioEmail(Emails.getSentDate());
            EmailPasta.setRemetenteEmail(Emails.getFrom()[0].toString());
            EmailPasta.setAssuntoEmail(Emails.getSubject());
       
            String TipoConteudoEmail = Emails.getContentType();
            String ConteudoEmail     = "";

            if (TipoConteudoEmail.contains("multipart")) {
                
                Multipart ConteudoMultiPart = (Multipart) Emails.getContent();
                
                int NumeroPartesConteudo = ConteudoMultiPart.getCount();
                
                for (int i = 0; i < NumeroPartesConteudo; i++) {
                    
                    MimeBodyPart ParteConteudo = (MimeBodyPart) ConteudoMultiPart.getBodyPart(i);
                    ConteudoEmail              = ParteConteudo.getContent().toString();
                }
                
            } else if (TipoConteudoEmail.contains("text/plain") || TipoConteudoEmail.contains("text/html")) {
                
                Object ConteudoTexto = Emails.getContent();
                
                if (ConteudoTexto != null) {
                    
                    ConteudoEmail = ConteudoTexto.toString();
                }
                
            } else if (!TipoConteudoEmail.contains("text/plain") || TipoConteudoEmail.contains("text/html") || TipoConteudoEmail.contains("multipart")  ) {
                
                ConteudoEmail = Emails.getContent().toString();
            }

            EmailPasta.setConteudoEmail(ConteudoEmail);
            
            ListaEmails.add(EmailPasta); 
            
            if (ExcluiEmail.equals("S")) {
                    
                Emails.setFlag(Flags.Flag.DELETED, true);
            }
            
            Emails.setFlag(Flags.Flag.FLAGGED, true);
            Emails.setFlag(Flags.Flag.RECENT, true);
        }
        
        Pasta.close(true);

        return ListaEmails;
    }
}
