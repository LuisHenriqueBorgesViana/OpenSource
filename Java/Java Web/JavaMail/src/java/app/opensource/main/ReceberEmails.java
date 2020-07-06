package app.opensource.main;

import app.opensource.mail.Modelo;
import app.opensource.mail.Receber;
import app.opensource.mail.Salvar;
import java.io.IOException;
import java.util.Collection;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ReceberEmails {
    
    public static void main (String[] args) throws Exception {
    
        Receber Email   = new Receber();
        Salvar  Arquivo = new Salvar();
    
        String Url_Servico_SMTP    = "smtp.gmail.com";
        String Tipo_Protocolo_SMTP = "imaps";
        String Usuario_Email       = "lhbv12@gmail.com";
        String Senha_Email         = "cmtifnufhhjtgijv";
        String Nome_Pasta_Email    = "INBOX";
        String Exclui_Email        = "N";
    
        Collection<Modelo> Emails = Email.Recebe(Url_Servico_SMTP, Tipo_Protocolo_SMTP, Usuario_Email, Senha_Email, Nome_Pasta_Email, Exclui_Email);
    
        Emails.forEach((Modelo ListaEmails) -> {
            
            System.out.println(ListaEmails.getNumeroEmail());
            System.out.println(ListaEmails.getRemetenteEmail());
            System.out.println(ListaEmails.getAssuntoEmail());
            System.out.println(ListaEmails.getConteudoEmail());
            
            try {
                
                Arquivo.SalvarArquivo("C:\\",ListaEmails.getAssuntoEmail(),ListaEmails.getConteudoEmail(),ListaEmails.getRemetenteEmail(),"");
                
            } catch (IOException ErroGravarArquivo) { ErroGravarArquivo.printStackTrace(); }
            
        });
   }
}
