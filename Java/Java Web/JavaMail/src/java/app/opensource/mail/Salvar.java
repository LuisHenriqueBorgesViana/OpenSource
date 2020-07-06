package app.opensource.mail;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

public class Salvar {
    
    public void SalvarArquivo (String Diretorio, String Assunto, String Conteudo, String Remetente, String DataHoraRecebimento) throws IOException {
                
        FileWriter Arquivo;  
       // Arquivo = new FileWriter(Diretorio + Remetente + Assunto + DataHoraRecebimento + ".html");
       
       Arquivo = new FileWriter(Diretorio + "teste.html");
        
        try (PrintWriter GravarArquivo = new PrintWriter(Arquivo)) {
            
            GravarArquivo.printf(Conteudo);
        }
    }
    
}
