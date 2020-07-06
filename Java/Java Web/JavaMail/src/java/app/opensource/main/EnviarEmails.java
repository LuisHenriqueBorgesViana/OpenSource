package app.opensource.main;

import app.opensource.mail.Enviar;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class EnviarEmails {
    
    public static void main (String[] args) throws Exception {

        int Porta_SMTP_Email          = 465;

        String Url_Servico_SMTP_Email = "smtp.gmail.com";
        String Usuario_Email          = "lhbv12@gmail.com";
        String Senha_Email            = "cmtifnufhhjtgijv";
        String Remente_Email          = "lhbv12@gmail.com";
        String Destinatario_Email     = "lhbv12@gmail.com";
        String Titulo_Email           = "Teste";
        String Conteudo_Email         = "Teste";
               
        Enviar Email = new Enviar();
        
        try {
            
              Email.EnviaEmail(Url_Servico_SMTP_Email, Porta_SMTP_Email, Usuario_Email, Senha_Email, Remente_Email, Destinatario_Email, Titulo_Email, Conteudo_Email);
              System.out.println("Email (" + Titulo_Email + ") enviado com sucesso para '" + Destinatario_Email + "' em " + DateTimeFormatter.ofPattern("dd/MM/uuuu HH:mm:ss").format(LocalDateTime.now()) + ".");
              
        } catch (Exception Erro) {
            
            System.out.println("Erro ao tentar enviar o Email:");
            Erro.printStackTrace(); 
        }
    }
}
